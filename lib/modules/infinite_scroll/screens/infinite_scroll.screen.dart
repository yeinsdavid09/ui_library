import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';

class InfiniteScrollScreen extends StatefulWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'infinite_scroll_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();

  //#endregion
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  //#region ----------------------------------- Variables ---------------------------------

  List<int> imagesIds = [1, 2, 3, 4, 5];
  bool imagesAreLoading = false;
  bool widgetIsMounted = true;
  final ScrollController infiniteScrollController = ScrollController();

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  @override
  void initState() {
    super.initState();
    infiniteScrollController.addListener(() {
      if (infiniteScrollController.position.pixels + 500 >=
          infiniteScrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    infiniteScrollController.dispose();
    widgetIsMounted = false;
    super.dispose();
  }

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  void addImages() {
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => imagesIds.last + e));
  }

  void clearImages() {
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
  }

  void moveScrollToBottom() {
    if (infiniteScrollController.position.pixels + 100 <=
        infiniteScrollController.position.maxScrollExtent) {
      return;
    }

    infiniteScrollController.animateTo(
      infiniteScrollController.position.pixels + 200,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  Future<void> loadNextPage() async {
    if (imagesAreLoading) return;
    imagesAreLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 2));
    addImages();
    imagesAreLoading = false;
    if (!widgetIsMounted) return;
    setState(() {});
    moveScrollToBottom();
  }

  Future<void> refreshPage() async {
    if (imagesAreLoading) return;
    imagesAreLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 2));
    if (!widgetIsMounted) return;
    clearImages();
    addImages();
    imagesAreLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: RefreshIndicator(
          onRefresh: () => refreshPage(),
          edgeOffset: 20,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            controller: infiniteScrollController,
            itemCount: imagesIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage(
                  'https://picsum.photos/id/${imagesIds[index]}/500/300',
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: _FloatingActionButton(
        imagesAreLoading: imagesAreLoading,
      ),
    );
  }

  //#endregion
}

class _FloatingActionButton extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------
  final bool imagesAreLoading;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const _FloatingActionButton({required this.imagesAreLoading});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => context.pop(),
      label:
          imagesAreLoading
              ? SpinPerfect(
                infinite: true,
                child: const Icon(Icons.refresh_rounded),
              )
              : FadeIn(child: const Icon(Icons.arrow_back_ios_new_rounded)),
    );
  }

  //#endregion
}
