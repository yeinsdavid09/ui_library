import 'package:flutter/material.dart';

//* Configs
import 'package:ui_library/configs/index.dart';
import 'package:ui_library/configs/router/app.router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const MyApp({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme(colorSeed: 1, brightness: Brightness.light).getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Ui Library',
    );
  }

  //#endregion
}
