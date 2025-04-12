import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//* Colors
import 'package:ui_library/configs/theme/app_colors.theme.dart';

final brightnessProvider = StateProvider<Brightness>((ref) => Brightness.light);
final colorsListProvider = Provider<List<Color>>((ref) => themeColors);
final colorProvider = StateProvider<int>((ref) => 0);
