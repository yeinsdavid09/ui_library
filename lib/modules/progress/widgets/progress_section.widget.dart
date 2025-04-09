import 'package:flutter/material.dart';

class ProgressSection extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final List<Widget> progress;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const ProgressSection({
    super.key,
    required this.title,
    required this.progress,
  });

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
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: progress,
          ),
          const Divider(),
        ],
      ),
    );

    //#endregion
  }

  //#endregion
}
