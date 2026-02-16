// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SettingController)
final settingControllerProvider = SettingControllerProvider._();

final class SettingControllerProvider
    extends $NotifierProvider<SettingController, SettingState> {
  SettingControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingControllerHash();

  @$internal
  @override
  SettingController create() => SettingController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SettingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SettingState>(value),
    );
  }
}

String _$settingControllerHash() => r'5259eca3fbd9a2584a376a445b45fadaf5d78f58';

abstract class _$SettingController extends $Notifier<SettingState> {
  SettingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<SettingState, SettingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SettingState, SettingState>,
              SettingState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
