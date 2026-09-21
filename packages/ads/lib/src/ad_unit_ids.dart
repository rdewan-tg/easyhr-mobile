/// Google's official sample ad unit IDs. Safe to ship in debug builds and
/// useful as a fallback so a misconfigured/missing real ID never causes a
/// policy violation from serving live ads during development.
class TestAdUnitIds {
  TestAdUnitIds._();

  static const String androidAppId = 'ca-app-pub-3940256099942544~3347511713';
  static const String iosAppId = 'ca-app-pub-3940256099942544~1458002511';

  static const String androidBanner = 'ca-app-pub-3940256099942544/6300978111';
  static const String iosBanner = 'ca-app-pub-3940256099942544/2934735716';

  static const String androidInterstitial =
      'ca-app-pub-3940256099942544/1033173712';
  static const String iosInterstitial =
      'ca-app-pub-3940256099942544/4411468910';

  static const String androidRewarded =
      'ca-app-pub-3940256099942544/5224354917';
  static const String iosRewarded = 'ca-app-pub-3940256099942544/1712485313';

  static const String androidAppOpen = 'ca-app-pub-3940256099942544/9257395921';
  static const String iosAppOpen = 'ca-app-pub-3940256099942544/5662855259';
}

/// Ad unit IDs for a single platform (Android or iOS). The host app is
/// responsible for supplying its own real IDs per platform/flavor; this
/// package never hardcodes app-specific IDs so it stays drop-in reusable.
class AdUnitIds {
  /// Only [banner] is required; the full-screen formats are optional.
  /// A `null` unit ID means "not configured" - the matching controller
  /// skips loading instead of failing on an empty/invalid ID.
  const AdUnitIds({
    required this.banner,
    this.interstitial,
    this.rewarded,
    this.appOpen,
  });

  /// Every ad unit set to Google's public test IDs. Handy default for local
  /// development/other projects before real AdMob IDs are provisioned.
  factory AdUnitIds.test({required bool isAndroid}) {
    return AdUnitIds(
      banner: isAndroid ? TestAdUnitIds.androidBanner : TestAdUnitIds.iosBanner,
      interstitial: isAndroid
          ? TestAdUnitIds.androidInterstitial
          : TestAdUnitIds.iosInterstitial,
      rewarded: isAndroid
          ? TestAdUnitIds.androidRewarded
          : TestAdUnitIds.iosRewarded,
      appOpen: isAndroid
          ? TestAdUnitIds.androidAppOpen
          : TestAdUnitIds.iosAppOpen,
    );
  }

  final String banner;
  final String? interstitial;
  final String? rewarded;
  final String? appOpen;
}
