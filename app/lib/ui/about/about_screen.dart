import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AboutScreen extends ConsumerWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Gather'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'The Gather App',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Gap(16),
              Text(
                'A Project for GovHack 2024',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Gap(16),
              Text(
                'by The Hunter Gatherers',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Gap(16),
              Text(
                'Joee Kelk',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Alan de Leeuw',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Beth Matthews',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Freya Su',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Peter Scully',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
