import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'cards_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const CardsScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Cards')),
        body: const Center(child: Text('Cards')),
      ),
    );
  }

  //#endregion
}
