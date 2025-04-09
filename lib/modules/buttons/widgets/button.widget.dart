import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const ButtonWidget({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    //#region ----------------------------------- Variables ---------------------------------

    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Custom Button',
              style: textTheme.labelMedium?.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );

    //#endregion
  }

  //#endregion
}
