import 'package:flutter/material.dart';

//* Models
import 'package:ui_library/modules/home/models/menu_items.model.dart';

//* Services
import 'package:ui_library/modules/home/services/items.api.dart';

//* Widgets
import 'package:ui_library/modules/home/widgets/list_tile_.widget.dart';

class HomeScreen extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  static const String routeName = 'home_screen';

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const HomeScreen({super.key});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Ui Library')),
        body: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final MenuItemsModel item = menuItems[index];
            return ListTileWidget(item: item);
          },
        ),
      ),
    );
  }

  //#endregion
}
