import 'package:flutter/material.dart';

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
        body: const Padding(padding: EdgeInsets.all(10)),
      ),
    );
  }

  //#endregion
}
