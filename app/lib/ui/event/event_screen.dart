import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govhack2024/model/event.dart';
import 'package:govhack2024/ui/event/event_screen_view_model.dart';

class EventScreen extends ConsumerWidget {
  const EventScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final EventScreenViewModel viewModel = ref.watch(eventScreenViewModelProvider(id: id).notifier);
    final Event? event = viewModel.event;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(event?.name ?? 'No Event'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: (event == null)
              ? Text(event?.name ?? 'No Event')
              : Column(
                  children: [
                    Text(
                      event.name,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      event.description,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      'From: ${event.startTime.toIso8601String()}',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ), // TODO(pgs): make pretty
                    Text(
                      'To: ${event.endTime.toIso8601String()}',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      event.location,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
