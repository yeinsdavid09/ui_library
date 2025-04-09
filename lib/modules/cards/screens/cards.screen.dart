import 'package:flutter/material.dart';

//* Widgets
import 'package:ui_library/modules/cards/widgets/card.widget.dart';
import 'package:ui_library/modules/cards/widgets/cards_section.widget.dart';

class CardsScreen extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'cards_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const CardsScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Cards')),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              spacing: 10,
              children: [
                _ElevatedCards(),
                _OutlinedCards(),
                _ColoredCards(),
                _CardsWithImage(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //#endregion
}

class _ElevatedCards extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _ElevatedCards();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return const CardsSection(
      title: 'Elevated Cards',
      cards: [
        CardWidget(elevation: 2, label: 'Elevation 2'),
        CardWidget(elevation: 4, label: 'Elevation 4'),
        CardWidget(elevation: 6, label: 'Elevation 6'),
      ],
    );
  }

  //#endregion
}

class _OutlinedCards extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _OutlinedCards();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    //#region ----------------------------------- Variables ---------------------------------

    final colors = Theme.of(context).colorScheme;

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return CardsSection(
      title: 'Outlined Cards',
      cards: [
        CardWidget(
          elevation: 2,
          label: 'Elevation 2 - Outlined',
          shape: RoundedRectangleBorder(
            side: BorderSide(color: colors.outline),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        CardWidget(
          elevation: 4,
          label: 'Elevation 4 - Outlined',
          shape: RoundedRectangleBorder(
            side: BorderSide(color: colors.outline),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        CardWidget(
          elevation: 6,
          label: 'Elevation 6 - Outlined',
          shape: RoundedRectangleBorder(
            side: BorderSide(color: colors.outline),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ],
    );

    //#endregion
  }

  //#endregion
}

class _ColoredCards extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _ColoredCards();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    //#region ----------------------------------- Variables ---------------------------------

    final colors = Theme.of(context).colorScheme;

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return CardsSection(
      title: 'Colored Cards',
      cards: [
        CardWidget(
          elevation: 2,
          label: 'Elevation 2 - Colored',
          color: colors.surfaceTint,
        ),
        CardWidget(
          elevation: 4,
          label: 'Elevation 4 - Colored',
          color: colors.surfaceTint,
        ),
        CardWidget(
          elevation: 6,
          label: 'Elevation 6 - Colored',
          color: colors.surfaceTint,
        ),
      ],
    );

    //#endregion
  }

  //#endregion
}

class _CardsWithImage extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _CardsWithImage();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  Image getImage(int number) {
    return Image.network(
      'https://picsum.photos/id/$number/600/350',
      height: 250,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return const SizedBox(
          height: 250,
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CardsSection(
      title: 'Colored Cards',
      cards: [
        CardWidget(
          elevation: 2,
          label: 'Elevation 2 - Colored',
          image: getImage(2),
        ),
        CardWidget(
          elevation: 4,
          label: 'Elevation 4 - Colored',
          image: getImage(4),
        ),
        CardWidget(
          elevation: 6,
          label: 'Elevation 6 - Colored',
          image: getImage(6),
        ),
      ],
    );
  }

  //#endregion
}
