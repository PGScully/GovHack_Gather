import 'package:govhack2024/model/event.dart';
import 'package:govhack2024/repository/event_repository.dart';
import 'package:govhack2024/ui/event_list/event_list_view_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_list_view_model.g.dart';

@riverpod
class EventListViewModel extends _$EventListViewModel {
  late final EventRepository repository;

  @override
  build() {
    repository = ref.watch(eventRepositoryProvider.notifier);
    return EventListViewState(repository.events);
  }

  EventListViewState get viewState => EventListViewState(repository.events);

  void addEvent(Event event) {
    repository.addEvent(event);
    state = EventListViewState(repository.events);
  }

  void updateEvent(Event event) {
    repository.updateEvent(event);
    state = EventListViewState(repository.events);
  }

  void removeEvent(String id) {
    repository.removeEvent(id);
    state = EventListViewState(repository.events);
  }
}
