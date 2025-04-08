import 'package:flutter/material.dart';

//* Configs
import 'package:ui_library/configs/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const MyApp({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(colorSeed: 1, brightness: Brightness.dark).getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Ui Library',
      home: SafeArea(child: Container()),
    );
  }

  //#endregion
}
