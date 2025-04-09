import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_library/modules/buttons/widgets/button.widget.dart';

//* Widgets
import 'package:ui_library/modules/buttons/widgets/buttons_section.widget.dart';

class ButtonsScreen extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'buttons_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const ButtonsScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Buttons')),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              _ElevatedButtons(),
              _FilledButtons(),
              _TextButtons(),
              _IconButtons(),
              _CustomButtons(),
            ],
          ),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () => context.pop(),
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
    );
  }

  //#endregion
}

class _ElevatedButtons extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _ElevatedButtons();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return ButtonsSection(
      title: 'Elevated Buttons',
      buttons: [
        ElevatedButton(onPressed: () {}, child: const Text('Regular Elevated')),
        const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
        ElevatedButton.icon(
          onPressed: () {},
          label: const Text('Icon Elevated'),
          icon: const Icon(Icons.alarm),
        ),
      ],
    );
  }

  //#endregion
}

class _FilledButtons extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _FilledButtons();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return ButtonsSection(
      title: 'Filled Buttons',
      buttons: [
        FilledButton(onPressed: () {}, child: const Text('Regular Filled')),
        const FilledButton(onPressed: null, child: Text('Filled Disabled')),
        FilledButton.icon(
          onPressed: () {},
          label: const Text('Icon Filled'),
          icon: const Icon(Icons.accessibility_new),
        ),
      ],
    );
  }

  //#endregion
}

class _TextButtons extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _TextButtons();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return ButtonsSection(
      title: 'Text Buttons',
      buttons: [
        TextButton(onPressed: () {}, child: const Text('Regular Text')),
        const TextButton(onPressed: null, child: Text('Text Disabled')),
        TextButton.icon(
          onPressed: () {},
          label: const Text('Icon Text'),
          icon: const Icon(Icons.terminal),
        ),
      ],
    );
  }

  //#endregion
}

class _IconButtons extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _IconButtons();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    //#region ----------------------------------- Variables ---------------------------------

    final colors = Theme.of(context).colorScheme;

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return ButtonsSection(
      title: 'Icon Buttons',
      buttons: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.airline_seat_recline_normal),
        ),
        const IconButton(
          onPressed: null,
          icon: Icon(Icons.airline_seat_recline_normal),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.airline_seat_recline_normal),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(colors.primary),
            iconColor: const WidgetStatePropertyAll(Colors.white),
          ),
        ),
      ],
    );

    //#endregion
  }

  //#endregion
}

class _CustomButtons extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _CustomButtons();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return const ButtonsSection(
      title: 'Custom Buttons',
      buttons: [ButtonWidget()],
    );
  }

  //#endregion
}
