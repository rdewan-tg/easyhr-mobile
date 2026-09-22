import 'package:ads/src/ad_unit_ids.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/// Supplies the [AdUnitIds] the host app wants to use. Override this
/// provider from the app's `ProviderScope` - the `ads` package has no
/// knowledge of the host app's flavor/env system.
final adUnitIdsProvider = Provider<AdUnitIds>((ref) {
  throw UnimplementedError(
    'adUnitIdsProvider must be overridden by the host app with its real '
    '(or test) AdMob unit IDs.',
  );
});

/// Registered test device IDs so real devices used during development don't
/// get flagged/banned for invalid traffic on live ad units. Override from
/// the host app if needed; defaults to none.
final adTestDeviceIdsProvider = Provider<List<String>>((ref) => const []);

final adMobServiceProvider = Provider<AdMobService>((ref) {
  return AdMobService(
    adUnitIds: ref.watch(adUnitIdsProvider),
    testDeviceIds: ref.watch(adTestDeviceIdsProvider),
  );
});

/// Thin wrapper around the Google Mobile Ads SDK lifecycle: one-time
/// initialization + shared request configuration. Ad-format specific
/// loading/showing lives in [InterstitialAdController], [RewardedAdController],
/// etc. so each concern stays testable on its own.
class AdMobService {
  AdMobService({required this.adUnitIds, this.testDeviceIds = const []});

  final AdUnitIds adUnitIds;
  final List<String> testDeviceIds;

  bool _initialized = false;

  Future<void> initialize() async {
    if (_initialized) return;
    await MobileAds.instance.initialize();
    await MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: testDeviceIds),
    );
    _initialized = true;
  }

  AdRequest buildAdRequest() => const AdRequest();

  void logAdEvent(String message) {
    if (kDebugMode) debugPrint('[ads] $message');
  }
}
