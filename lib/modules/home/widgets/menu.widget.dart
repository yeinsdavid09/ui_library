import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//* Models
import 'package:ui_library/modules/home/models/menu_items.model.dart';
import 'package:ui_library/modules/home/services/items.api.dart';

class MenuWidget extends StatefulWidget {
  //#region --------------------------------- Variables ---------------------------------

  final List<MenuItemsModel> items;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final ValueChanged<int>? onItemChange;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const MenuWidget({
    super.key,
    required this.items,
    required this.scaffoldKey,
    this.onItemChange,
  });

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  State<MenuWidget> createState() => _MenuWidgetState();

  //#endregion
}

class _MenuWidgetState extends State<MenuWidget> {
  //#region --------------------------------- Variables ---------------------------------

  int currentItem = 0;

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  Padding createPaddingWidget(Widget widget) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: widget,
    );
  }

  void navigateTo({required BuildContext context, required String location}) {
    context.push(location);
    widget.scaffoldKey.currentState?.closeDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: currentItem,
      onDestinationSelected: (value) {
        if (widget.onItemChange != null) widget.onItemChange!(value);
        navigateTo(context: context, location: menuItems[value].link);
        setState(() {
          currentItem = value;
        });
      },
      children: [
        const SizedBox(height: 10),
        createPaddingWidget(const Text('First List')),
        ...widget.items.sublist(0, (widget.items.length / 2).toInt()).map((
          item,
        ) {
          return NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title),
          );
        }),
        createPaddingWidget(const Divider()),
        createPaddingWidget(const Text('Second List')),
        ...widget.items.sublist((widget.items.length / 2).toInt()).map((item) {
          return NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title),
          );
        }),
      ],
    );
  }

  //#endregion
}
