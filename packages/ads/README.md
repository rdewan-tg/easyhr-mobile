# ads

Reusable Google Mobile Ads (AdMob) wrapper built on
[`google_mobile_ads`](https://pub.dev/packages/google_mobile_ads).

This package is intentionally **app-agnostic**: it knows nothing about
`easy_hr`'s flavors/env files. The host app supplies its own `AdUnitIds` via
Riverpod provider overrides, which is what makes this folder copy/paste (or
git/path-dependency) reusable across other Flutter projects.

## What's included

- `AdMobService` - one-time `MobileAds.instance.initialize()` + shared
  `AdRequest`/`RequestConfiguration` (test device IDs).
- `BannerAdWidget` - self-loading/self-disposing banner ad widget.
- `InterstitialAdController` / `RewardedAdController` - Riverpod
  `@riverpod` notifiers that preload the next ad automatically after the
  current one is shown/dismissed/fails.
- `AppOpenAdManager` - shows an app-open ad on resume, following Google's
  recommended pattern.
- `TestAdUnitIds` / `AdUnitIds.test()` - Google's official sample ad unit
  IDs, useful as a safe default while wiring things up.

## Using it in a project

1. Add the dependency (path or git):
   ```yaml
   dependencies:
     ads:
       path: packages/ads
   ```
2. Override `adUnitIdsProvider` (and optionally `adTestDeviceIdsProvider`)
   at the root of your `ProviderScope`:
   ```dart
   ProviderScope(
     overrides: [
       adUnitIdsProvider.overrideWithValue(
         AdUnitIds(
           banner: myBannerId,
           interstitial: myInterstitialId,
           rewarded: myRewardedId,
           appOpen: myAppOpenId,
         ),
       ),
     ],
     child: const MyApp(),
   )
   ```
3. Initialize the SDK once during app start-up:
   ```dart
   await ref.read(adMobServiceProvider).initialize();
   ```
4. Use the widgets/controllers wherever you need ads:
   ```dart
   const BannerAdWidget();
   ref.read(interstitialAdControllerProvider.notifier).show();
   await ref.read(rewardedAdControllerProvider.notifier).show();
   ```

## Native project setup checklist (required per app, not provided by this package)

AdMob's native SDKs require your App ID to be declared natively - this
can't be shipped inside a Dart package, so every app that depends on `ads`
must do this once:

### Android (`android/app/src/main/AndroidManifest.xml`)
```xml
<meta-data
    android:name="com.google.android.gms.ads.APPLICATION_ID"
    android:value="@string/admob_app_id"/>
```
Then define `admob_app_id` per build flavor in
`android/app/src/<flavor>/res/values/strings.xml` (see how `google_maps_key`
is done in this repo for the pattern), using Google's test app ID
(`ca-app-pub-3940256099942544~3347511713`) until you have real IDs.

### iOS (`ios/Runner/Info.plist`)
```xml
<key>GADApplicationIdentifier</key>
<string>$(ADMOB_APP_ID)</string>
<key>NSUserTrackingUsageDescription</key>
<string>This identifier will be used to deliver personalized ads to you.</string>
```
`ADMOB_APP_ID` is a per-flavor Xcode build setting (same pattern as
`GOOGLE_MAPS_API_KEY` in this repo), set on every `Debug-<flavor>`,
`Profile-<flavor>` and `Release-<flavor>` build configuration in
`ios/Runner.xcodeproj/project.pbxproj`. Replace the `prod` value with your
real iOS AdMob App ID before release (it's marked with a `TODO` comment).
If you serve ads from third-party networks via mediation, also add the
relevant `SKAdNetworkItems` entries.

### Both platforms
- Never ship without going through Google's [App ads.txt](https://support.google.com/admob/answer/9363762)
  / policy compliance steps before release.
- Keep using `AdUnitIds.test()` (or Google's test IDs) in debug builds so
  you never accidentally serve/click real ads during development.
