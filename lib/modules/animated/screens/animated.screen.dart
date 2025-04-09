import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'animated_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();

  //#endregion
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  //#region ----------------------------------- Variables ---------------------------------

  double width = 50;
  double height = 50;
  double borderRadius = 10;
  Color color = Colors.indigo;

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  changeShape() {
    final random = Random();
    width = random.nextInt(250) + 50;
    height = random.nextInt(250) + 50;
    borderRadius = random.nextInt(90) + 10;
    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Animated')),
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.elasticIn,
            width: max(width, 50),
            height: max(height, 50),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(max(borderRadius, 20)),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => changeShape(),
          label: const Icon(Icons.play_arrow_rounded),
        ),
      ),
    );
  }

  //#endregion
}
