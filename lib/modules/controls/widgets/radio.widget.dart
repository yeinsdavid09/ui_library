import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final String subtitle;
  final dynamic radioGroup;
  final dynamic radioValue;
  final ValueChanged<Object?> onValueChange;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const RadioWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.radioGroup,
    required this.onValueChange,
    required this.radioValue,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: radioValue,
      groupValue: radioGroup,
      onChanged: (value) {
        onValueChange(value);
      },
    );
  }

  //#endregion
}
