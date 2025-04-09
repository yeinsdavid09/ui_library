import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const SnackbarWidget({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  SnackBar build(BuildContext context) {
    return SnackBar(
      content: const Text(
        'Amet pariatur et consectetur excepteur consequat eiusmod mollit Lorem laborum ullamco officia aliquip esse.',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      duration: const Duration(seconds: 3),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
    );
  }

  //#endregion
}
