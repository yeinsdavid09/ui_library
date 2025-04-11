import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final String description;
  final String image;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const Slide({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    //#region ----------------------------------- Variables ---------------------------------

    final textTheme = Theme.of(context).textTheme;

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          Image.asset(image),
          Text(title, style: textTheme.titleLarge),
          Text(description, style: textTheme.bodyMedium),
        ],
      ),
    );

    //#endregion
  }

  //#endregion
}
