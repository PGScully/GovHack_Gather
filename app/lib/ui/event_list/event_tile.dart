import 'package:flutter/material.dart';
import 'package:govhack2024/model/event.dart';
import 'package:govhack2024/router/app_router.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          EventRoute(event.id).go(context);
        },
        child: Card(
          child: Column(
            children: [
              Text(
                event.name,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(event.description),
              Text(event.startTime.toIso8601String()), // TODO(pgs): make pretty
              Text(event.endTime.toIso8601String()),
              Text(event.location),
            ],
          ),
        ),
      );
}
