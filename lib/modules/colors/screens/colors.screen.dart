import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//* Providers
import 'package:ui_library/configs/index.dart';

//* Widgets
import 'package:ui_library/modules/controls/index.dart';

class ColorsScreen extends ConsumerWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'colors_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const ColorsScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  Brightness changeTheme(Brightness brightness) {
    if (brightness == Brightness.light) {
      return Brightness.dark;
    } else {
      return Brightness.light;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //#region ----------------------------------- Variables ---------------------------------

    final Brightness brightness = ref.watch(brightnessProvider);
    final List<Color> colorsList = ref.watch(colorsListProvider);
    final int color = ref.watch(colorProvider);

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
          actions: [
            IconButton(
              onPressed: () {
                ref
                    .read(brightnessProvider.notifier)
                    .update((state) => changeTheme(state));
              },
              icon: FadeIn(
                child: Icon(
                  brightness == Brightness.light
                      ? Icons.light_mode_outlined
                      : Icons.dark_mode_outlined,
                ),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: colorsList.length,
          itemBuilder: (context, index) {
            return RadioWidget(
              title: Text(
                'Escoger este color',
                style: TextStyle(
                  color: colorsList[index],
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('${colorsList[index].toARGB32()}'),
              radioGroup: color,
              color: colorsList[index],
              onValueChange: (dynamic value) {
                ref.read(colorProvider.notifier).state = value;
              },
              radioValue: index,
            );
          },
        ),
      ),
    );

    //#endregion
  }

  //#endregion
}
