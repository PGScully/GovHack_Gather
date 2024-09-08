// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$eventScreenViewModelHash() =>
    r'6d96de56a488d0d7cf818f3de3ce5209daa47fda';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$EventScreenViewModel
    extends BuildlessAutoDisposeNotifier<EventScreenViewState> {
  late final String id;

  EventScreenViewState build({
    required String id,
  });
}

/// See also [EventScreenViewModel].
@ProviderFor(EventScreenViewModel)
const eventScreenViewModelProvider = EventScreenViewModelFamily();

/// See also [EventScreenViewModel].
class EventScreenViewModelFamily extends Family {
  /// See also [EventScreenViewModel].
  const EventScreenViewModelFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'eventScreenViewModelProvider';

  /// See also [EventScreenViewModel].
  EventScreenViewModelProvider call({
    required String id,
  }) {
    return EventScreenViewModelProvider(
      id: id,
    );
  }

  @visibleForOverriding
  @override
  EventScreenViewModelProvider getProviderOverride(
    covariant EventScreenViewModelProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(EventScreenViewModel Function() create) {
    return _$EventScreenViewModelFamilyOverride(this, create);
  }
}

class _$EventScreenViewModelFamilyOverride implements FamilyOverride {
  _$EventScreenViewModelFamilyOverride(this.overriddenFamily, this.create);

  final EventScreenViewModel Function() create;

  @override
  final EventScreenViewModelFamily overriddenFamily;

  @override
  EventScreenViewModelProvider getProviderOverride(
    covariant EventScreenViewModelProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [EventScreenViewModel].
class EventScreenViewModelProvider extends AutoDisposeNotifierProviderImpl<
    EventScreenViewModel, EventScreenViewState> {
  /// See also [EventScreenViewModel].
  EventScreenViewModelProvider({
    required String id,
  }) : this._internal(
          () => EventScreenViewModel()..id = id,
          from: eventScreenViewModelProvider,
          name: r'eventScreenViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$eventScreenViewModelHash,
          dependencies: EventScreenViewModelFamily._dependencies,
          allTransitiveDependencies:
              EventScreenViewModelFamily._allTransitiveDependencies,
          id: id,
        );

  EventScreenViewModelProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  EventScreenViewState runNotifierBuild(
    covariant EventScreenViewModel notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(EventScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: EventScreenViewModelProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  ({
    String id,
  }) get argument {
    return (id: id,);
  }

  @override
  AutoDisposeNotifierProviderElement<EventScreenViewModel, EventScreenViewState>
      createElement() {
    return _EventScreenViewModelProviderElement(this);
  }

  EventScreenViewModelProvider _copyWith(
    EventScreenViewModel Function() create,
  ) {
    return EventScreenViewModelProvider._internal(
      () => create()..id = id,
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      id: id,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EventScreenViewModelProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EventScreenViewModelRef
    on AutoDisposeNotifierProviderRef<EventScreenViewState> {
  /// The parameter `id` of this provider.
  String get id;
}

class _EventScreenViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<EventScreenViewModel,
        EventScreenViewState> with EventScreenViewModelRef {
  _EventScreenViewModelProviderElement(super.provider);

  @override
  String get id => (origin as EventScreenViewModelProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
