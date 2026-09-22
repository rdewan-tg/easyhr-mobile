// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewarded_ad_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Loads and shows a rewarded ad. [show] resolves with `true` only if the
/// user actually earned the reward, so callers can gate the reward on it.

@ProviderFor(RewardedAdController)
final rewardedAdControllerProvider = RewardedAdControllerProvider._();

/// Loads and shows a rewarded ad. [show] resolves with `true` only if the
/// user actually earned the reward, so callers can gate the reward on it.
final class RewardedAdControllerProvider
    extends $NotifierProvider<RewardedAdController, AdLoadState> {
  /// Loads and shows a rewarded ad. [show] resolves with `true` only if the
  /// user actually earned the reward, so callers can gate the reward on it.
  RewardedAdControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rewardedAdControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rewardedAdControllerHash();

  @$internal
  @override
  RewardedAdController create() => RewardedAdController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdLoadState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdLoadState>(value),
    );
  }
}

String _$rewardedAdControllerHash() =>
    r'42a64f943711991a62cf17312e61c743370b5997';

/// Loads and shows a rewarded ad. [show] resolves with `true` only if the
/// user actually earned the reward, so callers can gate the reward on it.

abstract class _$RewardedAdController extends $Notifier<AdLoadState> {
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
