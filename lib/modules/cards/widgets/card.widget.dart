import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final double elevation;
  final String label;
  final ShapeBorder? shape;
  final Color? color;
  final Image? image;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const CardWidget({
    super.key,
    required this.elevation,
    required this.label,
    this.shape,
    this.color,
    this.image,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: shape,
      color: color,
      elevation: elevation,
      clipBehavior: Clip.hardEdge,
      child:
          image != null
              ? _WithImage(image: image!, label: label)
              : _WithoutImage(label: label),
    );
  }

  //#endregion
}

class _WithoutImage extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final String label;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const _WithoutImage({required this.label});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ),
          Align(alignment: Alignment.bottomLeft, child: Text(label)),
        ],
      ),
    );
  }

  //#endregion
}

class _WithImage extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final Image image;
  final String label;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const _WithImage({required this.image, required this.label});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        image,
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_outlined),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Text(label, style: const TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  //#endregion
}
