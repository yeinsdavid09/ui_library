import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final Text title;
  final Text subtitle;
  final dynamic radioGroup;
  final dynamic radioValue;
  final Color? color;
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
    this.color,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: title,
      subtitle: subtitle,
      value: radioValue,
      groupValue: radioGroup,
      activeColor: color,
      onChanged: (value) {
        onValueChange(value);
      },
    );
  }

  //#endregion
}
