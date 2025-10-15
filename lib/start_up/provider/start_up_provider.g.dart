// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_up_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(startUp)
const startUpProvider = StartUpFamily._();

final class StartUpProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const StartUpProvider._({
    required StartUpFamily super.from,
    required Flavor super.argument,
  }) : super(
         retry: null,
         name: r'startUpProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$startUpHash();

  @override
  String toString() {
    return r'startUpProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as Flavor;
    return startUp(ref, flavor: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is StartUpProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$startUpHash() => r'746ba08f05a64202c2f7328f8c8c8a0f4a56ae84';

final class StartUpFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<void>, Flavor> {
  const StartUpFamily._()
    : super(
        retry: null,
        name: r'startUpProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  StartUpProvider call({required Flavor flavor}) =>
      StartUpProvider._(argument: flavor, from: this);

  @override
  String toString() => r'startUpProvider';
}
