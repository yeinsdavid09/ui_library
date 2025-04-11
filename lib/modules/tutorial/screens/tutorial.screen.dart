import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';

//* Services
import 'package:ui_library/modules/tutorial/services/steps.api.dart';

//* Widgets
import 'package:ui_library/modules/tutorial/widgets/slide.widget.dart';

class TutorialScreen extends StatefulWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'tutorial_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();

  //#endregion
}

class _TutorialScreenState extends State<TutorialScreen> {
  //#region ----------------------------------- Variables ---------------------------------

  final PageController pageViewController = PageController();
  bool endPage = false;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      onEndPage();
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  onEndPage() {
    final page = pageViewController.page ?? 0;
    if (!endPage && page >= (steps.length - 1.5)) {
      setState(() {
        endPage = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              _Steps(pageViewController: pageViewController),
              Positioned(
                top: 0,
                right: 0,
                child: TextButton.icon(
                  onPressed: () => context.pop(),
                  label: const Text('Skip'),
                  icon: const Icon(Icons.arrow_outward_rounded),
                ),
              ),
              endPage ? const _StartButton() : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  //#endregion
}

class _Steps extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final PageController pageViewController;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const _Steps({required this.pageViewController});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageViewController,
      physics: const BouncingScrollPhysics(),
      children:
          steps.map((step) {
            return Slide(
              title: step.title,
              description: step.description,
              image: step.image,
            );
          }).toList(),
    );
  }

  //#endregion
}

class _StartButton extends StatelessWidget {
  //#region --------------------------------- Hooks ---------------------------------

  const _StartButton();

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: FadeInRight(
        from: 15,
        duration: const Duration(milliseconds: 150),
        child: FilledButton.icon(
          onPressed: () => context.pop(),
          label: const Text('Start'),
          icon: const Icon(Icons.arrow_forward_outlined),
        ),
      ),
    );
  }

  //#endregion
}
