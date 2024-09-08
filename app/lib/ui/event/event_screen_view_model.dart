import 'package:collection/collection.dart';
import 'package:govhack2024/model/event.dart';
import 'package:govhack2024/repository/event_repository.dart';
import 'package:govhack2024/ui/event/event_screen_view_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_screen_view_model.g.dart';

@riverpod
class EventScreenViewModel extends _$EventScreenViewModel {
  late final EventRepository repository;

  @override
  EventScreenViewState build({required String id}) {
    repository = ref.watch(eventRepositoryProvider.notifier);
    final event = repository.events.firstWhereOrNull((event) => event.id == id);
    return EventScreenViewState(event: event);
  }

  Event? get event => repository.events.firstWhereOrNull((event) => event.id == id);
}
