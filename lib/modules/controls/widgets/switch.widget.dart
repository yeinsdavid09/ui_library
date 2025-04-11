import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final String subtitle;
  final ValueChanged<bool?> onValueChange;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const SwitchWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onValueChange,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();

  //#endregion
}

class _SwitchWidgetState extends State<SwitchWidget> {
  //#region ----------------------------------- Variables ---------------------------------

  bool switchValue = false;

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(widget.title),
      subtitle: Text(widget.subtitle),
      value: switchValue,
      onChanged: (value) {
        widget.onValueChange(value);
        setState(() {
          switchValue = !switchValue;
        });
      },
    );
  }

  //#endregion
}
