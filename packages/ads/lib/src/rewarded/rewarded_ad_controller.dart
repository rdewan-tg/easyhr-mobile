import 'dart:async';

import 'package:ads/src/ad_load_state.dart';
import 'package:ads/src/admob_service.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rewarded_ad_controller.g.dart';

/// Loads and shows a rewarded ad. [show] resolves with `true` only if the
/// user actually earned the reward, so callers can gate the reward on it.
@riverpod
class RewardedAdController extends _$RewardedAdController {
  RewardedAd? _ad;

  @override
  AdLoadState build() {
    ref.onDispose(() => _ad?.dispose());
    load();
    return const AdLoadState();
  }

  AdMobService get _service => ref.read(adMobServiceProvider);

  Future<void> load() async {
    if (state.isLoading) return;
    final adUnitId = _service.adUnitIds.rewarded;
    if (adUnitId == null) {
      _service.logAdEvent('Rewarded ad not configured, skipping load');
      return;
    }
    state = state.copyWith(status: AdLoadStatus.loading);

    await RewardedAd.load(
      adUnitId: adUnitId,
      request: _service.buildAdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
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

  Future<bool> show() async {
    final ad = _ad;
    if (ad == null || !state.isLoaded) return false;

    var earnedReward = false;
    final completer = Completer<bool>();

    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _ad = null;
        state = const AdLoadState();
        load();
        if (!completer.isCompleted) completer.complete(earnedReward);
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        _ad = null;
        state = const AdLoadState();
        load();
        if (!completer.isCompleted) completer.complete(false);
      },
    );
    _ad = null;
    state = const AdLoadState();

    ad.show(
      onUserEarnedReward: (ad, reward) {
        earnedReward = true;
      },
    );
    return completer.future;
  }
}
