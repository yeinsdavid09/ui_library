import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//* Screens
import 'package:ui_library/modules/buttons/index.dart';
import 'package:ui_library/modules/cards/index.dart';
import 'package:ui_library/modules/home/index.dart';

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
  ],
);
