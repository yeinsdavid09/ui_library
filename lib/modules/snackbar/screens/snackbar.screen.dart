import 'package:flutter/material.dart';

//* Widgets
import 'package:ui_library/modules/snackbar/widgets/dialog.widget.dart';
import 'package:ui_library/modules/snackbar/widgets/snackbar.widget.dart';

class SnackbarScreen extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'snackbar_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const SnackbarScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  void openSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackbarWidget().build(context));
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const DialogWidget(),
    );
  }

  openAboutDialog(BuildContext context) {
    showAboutDialog(
      context: context,
      children: [
        const Text(
          'Exercitation quis elit nulla esse non dolor in commodo pariatur. Labore ad ipsum et deserunt commodo non cillum in deserunt pariatur in dolor. Consectetur quis qui sunt velit veniam dolore laboris consequat magna elit labore. Excepteur irure nisi minim laboris est ad aliquip minim deserunt proident voluptate. Elit commodo sit irure quis. Minim adipisicing nulla tempor consectetur veniam esse officia dolore nostrud in elit anim. Exercitation aute duis adipisicing do pariatur adipisicing ipsum consectetur enim ipsum.',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Snackbar')),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () => openAboutDialog(context),
            child: const Text('Show Licenses'),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: 10,
          children: [
            FloatingActionButton.extended(
              heroTag: 'dialogFab',
              onPressed: () => openDialog(context),
              label: const Text('Show Dialog'),
              icon: const Icon(Icons.window_outlined),
            ),
            FloatingActionButton.extended(
              heroTag: 'snackbarFab',
              onPressed: () => openSnackbar(context),
              label: const Text('Show Snackbar'),
              icon: const Icon(Icons.notifications_active_outlined),
            ),
          ],
        ),
      ),
    );
  }

  //#endregion
}
