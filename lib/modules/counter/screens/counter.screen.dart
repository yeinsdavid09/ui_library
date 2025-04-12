import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//* Providers
import 'package:ui_library/modules/counter/providers/counter.provider.dart';

class CounterScreen extends ConsumerWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'counter_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const CounterScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //#region --------------------------------- Variables ---------------------------------

    final int counter = ref.watch(counterProvider);

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Counter')),
        body: Center(child: Text('Valor: $counter')),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          spacing: 10,
          children: [
            FloatingActionButton.extended(
              heroTag: 'addFab',
              onPressed: () {
                ref.read(counterProvider.notifier).state++;
              },
              label: const Icon(Icons.add),
            ),
            FloatingActionButton.extended(
              heroTag: 'substractFab',
              onPressed: () {
                if (counter <= 0) return;
                ref.read(counterProvider.notifier).state--;
              },
              label: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );

    //#endregion
  }

  //#endregion
}
