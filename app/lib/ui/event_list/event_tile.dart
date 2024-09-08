import 'package:flutter/material.dart';
import 'package:govhack2024/model/event.dart';
import 'package:govhack2024/router/app_router.dart';
import 'package:intl/intl.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    super.key,
    required this.event,
  });

  final Event event;

  static final dateFormat = DateFormat('E d MMM');
  static final timeFormat = DateFormat('k:mm a');

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
              Text('Date: ${dateFormat.format(event.startTime)}'),
              Text(
                  'From: ${timeFormat.format(event.startTime)} to ${timeFormat.format(event.endTime)}'),
              Text(event.location),
            ],
          ),
        ),
      );
}
