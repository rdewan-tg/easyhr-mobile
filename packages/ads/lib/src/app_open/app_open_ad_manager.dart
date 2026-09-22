import 'package:ads/src/admob_service.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/// Shows an app-open ad whenever the app is resumed from the background,
/// following Google's recommended app-open ad pattern. Call [initialize]
/// once (e.g. from start-up) and [dispose] when the app is torn down.
class AppOpenAdManager {
  AppOpenAdManager({required this.adMobService});

  final AdMobService adMobService;

  AppOpenAd? _ad;
  bool _isLoadingAd = false;
  bool _isShowingAd = false;
  DateTime? _loadedAt;
  AppLifecycleListener? _lifecycleListener;

  static const _maxCacheDuration = Duration(hours: 4);

  void initialize() {
    _lifecycleListener = AppLifecycleListener(
      onStateChange: (state) {
        if (state == AppLifecycleState.resumed) _maybeShowAd();
      },
    );
    _loadAd();
  }

  void dispose() {
    _lifecycleListener?.dispose();
    _ad?.dispose();
  }

  bool get _isAdAvailable {
    final loadedAt = _loadedAt;
    if (_ad == null || loadedAt == null) return false;
    return DateTime.now().difference(loadedAt) < _maxCacheDuration;
  }

  Future<void> _loadAd() async {
    if (_isLoadingAd || _isAdAvailable) return;
    final adUnitId = adMobService.adUnitIds.appOpen;
    if (adUnitId == null) {
      adMobService.logAdEvent('App open ad not configured, skipping load');
      return;
    }
    _isLoadingAd = true;

    await AppOpenAd.load(
      adUnitId: adUnitId,
      request: adMobService.buildAdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _isLoadingAd = false;
          _ad = ad;
          _loadedAt = DateTime.now();
        },
        onAdFailedToLoad: (error) {
          _isLoadingAd = false;
          adMobService.logAdEvent('App open ad failed to load: $error');
        },
      ),
    );
  }

  void _maybeShowAd() {
    if (_isShowingAd || !_isAdAvailable) {
      _loadAd();
      return;
    }

    final ad = _ad;
    if (ad == null) return;

    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        _isShowingAd = false;
        ad.dispose();
        _ad = null;
        _loadAd();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        _isShowingAd = false;
        ad.dispose();
        _ad = null;
        _loadAd();
      },
    );
    _isShowingAd = true;
    ad.show();
  }
}
