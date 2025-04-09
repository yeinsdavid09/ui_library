import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogWidget extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const DialogWidget({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Are you sure?'),
      content: const Text(
        'Anim fugiat anim adipisicing irure consequat aute laborum esse ea. Enim nisi qui excepteur cupidatat deserunt reprehenderit nostrud qui incididunt quis et incididunt. Anim adipisicing laboris ad qui nisi aute velit non tempor ex.',
      ),
      actions: [
        TextButton.icon(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.close),
          label: const Text('Close'),
        ),
        FilledButton.icon(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.check),
          label: const Text('Confirm'),
        ),
      ],
    );
  }

  //#endregion
}
