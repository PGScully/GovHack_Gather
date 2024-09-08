import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:govhack2024/router/error_screen.dart';
import 'package:govhack2024/ui/about/about_screen.dart';
import 'package:govhack2024/ui/event/event_screen.dart';
import 'package:govhack2024/ui/event_list/event_list_screen.dart';
import 'package:govhack2024/ui/home/home_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "app_router.g.dart";

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: $appRoutes,
    redirect: (context, state) {
      return null;
    },
    errorBuilder: (context, state) =>
        ErrorRoute(error: state.error ?? Exception('Unknown error')).build(context, state),
  );
}

@TypedGoRoute<HomeRoute>(
  name: 'home',
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<EventListRoute>(
      path: 'events',
      name: 'events',
      routes: <TypedGoRoute<GoRouteData>>[
        TypedGoRoute<EventRoute>(
          path: ':id',
          name: 'event',
        ),
      ],
    ),
    TypedGoRoute<AboutRoute>(
      path: 'about',
      name: 'about',
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class EventListRoute extends GoRouteData {
  const EventListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const EventListScreen();
}

class EventRoute extends GoRouteData {
  EventRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) => EventScreen(id: id);
}

class AboutRoute extends GoRouteData {
  const AboutRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const AboutScreen();
}

// + the home screen/big loading logo
// + a page with a list of events... or at one stage we did talk about them being "swipeable" like a
//   dating app, in which case maybe three-five events in a frame?
// + The "prompt to review event" screen (not sure on wording - Beth might have an idea.
// + We're probably going to need at least some of the baseline wellbeing questions on screen
//   (comp/phone)
// + The connectedness people logo, a version with the low number of people, and one with more
//   (yay!)

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});
  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) => ErrorScreen(error: error);
}
