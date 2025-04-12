import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//* Configs
import 'package:ui_library/configs/index.dart';
import 'package:ui_library/configs/router/app.router.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const MyApp({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //#region ----------------------------------- Variables ---------------------------------

    final Brightness brightness = ref.watch(brightnessProvider);
    final int color = ref.watch(colorProvider);

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme(colorSeed: color, brightness: brightness).getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Ui Library',
    );

    //#endregion
  }

  //#endregion
}
