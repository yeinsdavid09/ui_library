import 'package:flutter/material.dart';

class ButtonsSection extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final List<Widget> buttons;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const ButtonsSection({super.key, required this.title, required this.buttons});

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
          Wrap(spacing: 10, alignment: WrapAlignment.start, children: buttons),
          const Divider(),
        ],
      ),
    );

    //#endregion
  }

  //#endregion
}
