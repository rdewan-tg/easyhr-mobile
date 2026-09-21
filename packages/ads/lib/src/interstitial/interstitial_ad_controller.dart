import 'package:ads/src/ad_load_state.dart';
import 'package:ads/src/admob_service.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'interstitial_ad_controller.g.dart';

/// Loads and shows a full-screen interstitial ad. A new ad is preloaded
/// right after the previous one is shown/dismissed/failed so the next call
/// to [show] can usually display instantly.
@riverpod
class InterstitialAdController extends _$InterstitialAdController {
  InterstitialAd? _ad;

  @override
  AdLoadState build() {
    ref.onDispose(() => _ad?.dispose());
    load();
    return const AdLoadState();
  }

  AdMobService get _service => ref.read(adMobServiceProvider);

  Future<void> load() async {
    if (state.isLoading) return;
    final adUnitId = _service.adUnitIds.interstitial;
    if (adUnitId == null) {
      _service.logAdEvent('Interstitial not configured, skipping load');
      return;
    }
    state = state.copyWith(status: AdLoadStatus.loading);

    await InterstitialAd.load(
      adUnitId: adUnitId,
      request: _service.buildAdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _ad = ad;
          state = state.copyWith(status: AdLoadStatus.loaded);
        },
        onAdFailedToLoad: (error) {
          _ad = null;
          state = state.copyWith(
            status: AdLoadStatus.failed,
            errorMessage: error.message,
          );
        },
      ),
    );
  }

  /// Shows the preloaded ad if ready. Returns false if none is available
  /// yet (caller should just continue its flow rather than block on ads).
  bool show() {
    final ad = _ad;
    if (ad == null || !state.isLoaded) return false;

    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _ad = null;
        state = const AdLoadState();
        load();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        _ad = null;
        state = const AdLoadState();
        load();
      },
    );
    _ad = null;
    state = const AdLoadState();
    ad.show();
    return true;
  }
}
