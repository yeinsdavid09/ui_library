import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final String subtitle;
  final ValueChanged<bool?> onValueChange;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const CheckboxWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onValueChange,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();

  //#endregion
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  //#region ----------------------------------- Variables ---------------------------------

  bool checkboxValue = false;

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.title),
      subtitle: Text(widget.subtitle),
      value: checkboxValue,
      onChanged: (value) {
        widget.onValueChange(value);
        setState(() {
          checkboxValue = !checkboxValue;
        });
      },
    );
  }

  //#endregion
}
