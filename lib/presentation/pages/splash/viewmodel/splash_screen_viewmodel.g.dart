// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_screen_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(splashScreenViewmodel)
const splashScreenViewmodelProvider = SplashScreenViewmodelProvider._();

final class SplashScreenViewmodelProvider
    extends
        $FunctionalProvider<
          SplashScreenViewmodel,
          SplashScreenViewmodel,
          SplashScreenViewmodel
        >
    with $Provider<SplashScreenViewmodel> {
  const SplashScreenViewmodelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashScreenViewmodelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashScreenViewmodelHash();

  @$internal
  @override
  $ProviderElement<SplashScreenViewmodel> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SplashScreenViewmodel create(Ref ref) {
    return splashScreenViewmodel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SplashScreenViewmodel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SplashScreenViewmodel>(value),
    );
  }
}

String _$splashScreenViewmodelHash() =>
    r'1dac6635170ba0e9a141504a17d1a48a020b0b3b';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
