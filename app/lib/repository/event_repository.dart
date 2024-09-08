import 'package:collection/collection.dart';
import 'package:govhack2024/model/event.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_repository.g.dart';

@Riverpod(keepAlive: true)
class EventRepository extends _$EventRepository {
  // TODO(pgs): Temporarily use local memory for storage, until we implement a backend.
  final List<Event> _events = _initialEvents;

  @override
  build() {
    return _events;
  }

  List<Event> get events => _events;

  void addEvent(Event event) {
    _events.add(event);
    state = AsyncValue.data(_events);
  }

  void updateEvent(Event event) {
    final index = _events.indexOf(event);
    if (index != -1) {
      _events[index] = event;
    }
    state = AsyncValue.data(_events);
  }

  void removeEvent(String id) {
    final event = _events.firstWhereOrNull((event) => event.id == id);
    if (event != null) {
      _events.remove(event);
    }
    state = AsyncValue.data(_events);
  }
}

final _initialEvents = <Event>[
  Event(
    id: '1',
    name: 'Park Run Launceston',
    description: '5k run with friends',
    location: 'North Inveresk',
    startTime: DateTime(2024, 9, 8, 9, 00),
    endTime: DateTime(2024, 9, 8, 11, 00),
  ),
  Event(
    id: '2',
    name: 'Book Club',
    description: 'Read a book with friends',
    location: 'Library',
    startTime: DateTime(2024, 9, 8, 9, 00),
    endTime: DateTime(2024, 9, 8, 11, 00),
  ),
  Event(
    id: '3',
    name: 'Drawtober',
    description: 'Draw with friends',
    location: 'Library',
    startTime: DateTime(2024, 9, 8, 9, 00),
    endTime: DateTime(2024, 9, 8, 11, 00),
  ),
  Event(
    id: '4',
    name: 'Landcare',
    description: 'Care for the environment with friends',
    location: 'Library',
    startTime: DateTime(2024, 9, 8, 9, 00),
    endTime: DateTime(2024, 9, 8, 11, 00),
  ),
  Event(
    id: '5',
    name: 'Park Run Canberra',
    description: '5k run with friends',
    location: 'Canberra',
    startTime: DateTime(2024, 9, 8, 9, 00),
    endTime: DateTime(2024, 9, 8, 11, 00),
  ),
];
