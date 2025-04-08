import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//* Models
import 'package:ui_library/modules/home/models/menu_items.model.dart';

class ListTileWidget extends StatelessWidget {
  //#region ----------------------------------- Variables ---------------------------------

  final MenuItemsModel item;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const ListTileWidget({super.key, required this.item});

  //#endregion

  //#region --------------------------------- Methods ---------------------------------

  @override
  Widget build(BuildContext context) {
    //#region ----------------------------------- Variables ---------------------------------

    final colors = Theme.of(context).colorScheme;

    //#endregion

    //#region --------------------------------- Return ---------------------------------

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        title: Text(item.title),
        subtitle: Text(item.description),
        leading: Icon(item.icon, color: colors.primary),
        trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
        onTap: () => context.push(item.link),
      ),
    );

    //#endregion
  }

  //#endregion
}
