import 'package:flutter/material.dart';

class CardsSection extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final List<Widget> cards;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const CardsSection({super.key, required this.title, required this.cards});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    //#region ----------------------------------- Variables ---------------------------------

    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return SizedBox(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: textTheme.titleMedium),
          const SizedBox(height: 5),
          Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: cards,
          ),
          const SizedBox(height: 10),
          const Divider(),
        ],
      ),
    );

    //#endregion
  }

  //#endregion
}
