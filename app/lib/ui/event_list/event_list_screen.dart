import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govhack2024/ui/event_list/event_list_view_model.dart';
import 'package:govhack2024/ui/event_list/event_tile.dart';

class EventListScreen extends ConsumerWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final EventListViewModel viewModel = ref.watch(eventListViewModelProvider.notifier);
    final events = viewModel.viewState.events;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Events'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (_, i) => EventTile(event: events[i]),
      ),
    );
  }
}
