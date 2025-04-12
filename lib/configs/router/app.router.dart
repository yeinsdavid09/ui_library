import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_library/modules/animated/index.dart';

//* Screens
import 'package:ui_library/modules/home/index.dart';
import 'package:ui_library/modules/buttons/index.dart';
import 'package:ui_library/modules/cards/index.dart';
import 'package:ui_library/modules/controls/index.dart';
import 'package:ui_library/modules/infinite_scroll/index.dart';
import 'package:ui_library/modules/progress/index.dart';
import 'package:ui_library/modules/snackbar/index.dart';
import 'package:ui_library/modules/tutorial/index.dart';
import 'package:ui_library/modules/counter/index.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ButtonsScreen();
      },
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const CardsScreen();
      },
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const AnimatedScreen();
      },
    ),
    GoRoute(
      path: '/controls',
      name: ControlsScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ControlsScreen();
      },
    ),
    GoRoute(
      path: '/infinite-scroll',
      name: InfiniteScrollScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const InfiniteScrollScreen();
      },
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const ProgressScreen();
      },
    ),
    GoRoute(
      path: '/snackbar',
      name: SnackbarScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const SnackbarScreen();
      },
    ),
    GoRoute(
      path: '/tutorial',
      name: TutorialScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const TutorialScreen();
      },
    ),
    GoRoute(
      path: '/counter',
      name: CounterScreen.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const CounterScreen();
      },
    ),
  ],
);
