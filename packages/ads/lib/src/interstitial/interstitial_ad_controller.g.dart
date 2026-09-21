// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interstitial_ad_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Loads and shows a full-screen interstitial ad. A new ad is preloaded
/// right after the previous one is shown/dismissed/failed so the next call
/// to [show] can usually display instantly.

@ProviderFor(InterstitialAdController)
final interstitialAdControllerProvider = InterstitialAdControllerProvider._();

/// Loads and shows a full-screen interstitial ad. A new ad is preloaded
/// right after the previous one is shown/dismissed/failed so the next call
/// to [show] can usually display instantly.
final class InterstitialAdControllerProvider
    extends $NotifierProvider<InterstitialAdController, AdLoadState> {
  /// Loads and shows a full-screen interstitial ad. A new ad is preloaded
  /// right after the previous one is shown/dismissed/failed so the next call
  /// to [show] can usually display instantly.
  InterstitialAdControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'interstitialAdControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$interstitialAdControllerHash();

  @$internal
  @override
  InterstitialAdController create() => InterstitialAdController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdLoadState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdLoadState>(value),
    );
  }
}

String _$interstitialAdControllerHash() =>
    r'6bace7de1956dc0caf35bacd1e1f58a3eba206a7';

/// Loads and shows a full-screen interstitial ad. A new ad is preloaded
/// right after the previous one is shown/dismissed/failed so the next call
/// to [show] can usually display instantly.

abstract class _$InterstitialAdController extends $Notifier<AdLoadState> {
  AdLoadState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AdLoadState, AdLoadState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AdLoadState, AdLoadState>,
              AdLoadState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
