import 'package:flutter/material.dart';

//* Configs
import './app_colors.theme.dart';

class AppTheme {
  //#region ----------------------------------- Variables ---------------------------------

  late int _colorSeed;
  late Brightness _brightness;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  AppTheme({required int colorSeed, required Brightness brightness})
    : _colorSeed = colorSeed,
      _brightness = brightness;

  //#endregion

  //#region --------------------------------- Accessors ---------------------------------

  int get colorSeed => _colorSeed;

  set colorSeed(int value) {
    if (value < 0 || value > themeColors.length - 1) {
      throw ArgumentError(
        'The theme color must be a value between 0 and ${themeColors.length - 1}',
      );
    }
    _colorSeed = value;
  }

  Brightness get brightness => _brightness;

  set brightness(Brightness value) {
    _brightness = value;
  }

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: themeColors[_colorSeed],
      brightness: _brightness,
      appBarTheme: AppBarTheme(centerTitle: false),
    );
  }

  //#endregion
}
