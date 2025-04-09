import 'package:flutter/material.dart';
import 'package:ui_library/modules/progress/widgets/progress_section.widget.dart';

class ProgressScreen extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'progress_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const ProgressScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Progress')),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [_InfiniteProgress(), _ControlledProgress()],
          ),
        ),
      ),
    );
  }

  //#endregion
}

class _InfiniteProgress extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _InfiniteProgress();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return const ProgressSection(
      title: 'Infinite Progress',
      progress: [
        CircularProgressIndicator(
          strokeWidth: 2,
          backgroundColor: Colors.black12,
        ),
      ],
    );
  }

  //#endregion
}

class _ControlledProgress extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _ControlledProgress();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  StreamBuilder<double> getProgressIndicator(
    Widget Function(double progressValue) builder,
  ) {
    return StreamBuilder<double>(
      stream: Stream.periodic(
        const Duration(milliseconds: 300),
        (value) => (value * 5) / 100,
      ).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0.0;
        return builder(progressValue);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ProgressSection(
      title: 'Controlled Progress',
      progress: [
        getProgressIndicator(
          (progressValue) => CircularProgressIndicator(
            value: progressValue,
            strokeWidth: 2,
            backgroundColor: Colors.black12,
          ),
        ),
        Expanded(
          child: getProgressIndicator(
            (progressValue) => LinearProgressIndicator(
              value: progressValue,
              backgroundColor: Colors.black12,
            ),
          ),
        ),
      ],
    );
  }

  //#endregion
}
