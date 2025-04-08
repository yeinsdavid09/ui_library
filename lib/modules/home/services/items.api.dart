import 'package:flutter/material.dart';

//* Widgets
import 'package:ui_library/modules/home/models/menu_items.model.dart';

List<MenuItemsModel> menuItems = [
  MenuItemsModel(
    title: 'Botones',
    description: 'Mira un catálogo de botones prediseñados para tu proyecto',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItemsModel(
    title: 'Cards',
    description: 'Mira un catálogo de tarjetas prediseñados para tu proyecto',
    link: '/cards',
    icon: Icons.credit_card,
  ),
];
