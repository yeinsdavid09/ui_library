import 'package:flutter/material.dart';

//* Widgets
import 'package:ui_library/modules/controls/widgets/checkbox.widget.dart';
import 'package:ui_library/modules/controls/widgets/radio.widget.dart';
import 'package:ui_library/modules/controls/widgets/switch.widget.dart';

class ControlsScreen extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'controls_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const ControlsScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Controls')),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: [
              const _SwitchControls(),
              const SizedBox(height: 10),
              const _CheckboxControls(),
              const SizedBox(height: 10),
              _RadioControls(),
            ],
          ),
        ),
      ),
    );
  }

  //#endregion
}

class _SwitchControls extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _SwitchControls();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Switch Controls'),
      children: [
        SwitchWidget(
          title: 'Developer Mode',
          subtitle: 'Fugiat dolore dolor veniam nulla sint enim non.',
          onValueChange: (_) {},
        ),
        SwitchWidget(
          title: 'Light Mode',
          subtitle: 'Fugiat dolore dolor veniam nulla sint enim non.',
          onValueChange: (_) {},
        ),
        SwitchWidget(
          title: 'Activate Mode',
          subtitle: 'Fugiat dolore dolor veniam nulla sint enim non.',
          onValueChange: (_) {},
        ),
      ],
    );
  }

  //#endregion
}

class _CheckboxControls extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _CheckboxControls();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Checkbox Controls'),
      children: [
        CheckboxWidget(
          title: 'Breakfast',
          subtitle: 'In commodo exercitation est tempor proident ut duis.',
          onValueChange: (_) {},
        ),
        CheckboxWidget(
          title: 'Lunch',
          subtitle: 'In commodo exercitation est tempor proident ut duis.',
          onValueChange: (_) {},
        ),
        CheckboxWidget(
          title: 'Dinner',
          subtitle: 'In commodo exercitation est tempor proident ut duis.',
          onValueChange: (_) {},
        ),
      ],
    );
  }

  //#endregion
}

class _RadioControls extends StatefulWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _RadioControls();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  State<_RadioControls> createState() => _RadioControlsState();

  //#endregion
}

class _RadioControlsState extends State<_RadioControls> {
  //#region ----------------------------------- Variables ---------------------------------

  dynamic radioGroup;

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  setRadioValue(dynamic value) {
    setState(() {
      radioGroup = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Radio Controls'),
      children: [
        RadioWidget(
          title: 'By Car',
          subtitle: 'Adipisicing esse quis aute dolore qui non nisi irure.',
          radioGroup: radioGroup,
          radioValue: 'car',
          onValueChange: (value) => setRadioValue(value),
        ),
        RadioWidget(
          title: 'By Boat',
          subtitle: 'Adipisicing esse quis aute dolore qui non nisi irure.',
          radioGroup: radioGroup,
          radioValue: 'boat',
          onValueChange: (value) => setRadioValue(value),
        ),
        RadioWidget(
          title: 'By Airplane',
          subtitle: 'Adipisicing esse quis aute dolore qui non nisi irure.',
          radioGroup: radioGroup,
          radioValue: 'airplane',
          onValueChange: (value) => setRadioValue(value),
        ),
        RadioWidget(
          title: 'By Submarine',
          subtitle: 'Adipisicing esse quis aute dolore qui non nisi irure.',
          radioGroup: radioGroup,
          radioValue: 'submarine',
          onValueChange: (value) => setRadioValue(value),
        ),
      ],
    );
  }

  //#endregion
}
