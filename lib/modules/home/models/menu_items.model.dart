import 'package:flutter/material.dart';

class MenuItemsModel {
  //#region ----------------------------------- Variables ---------------------------------

  final String title;
  final String description;
  final String link;
  final IconData icon;

  //#endregion

  //#region --------------------------------- Hooks ---------------------------------

  const MenuItemsModel({
    required this.title,
    required this.description,
    required this.link,
    required this.icon,
  });

  //#endregion
}
