import 'package:flutter/material.dart';

class MenusItem {
  final String text;
  final IconData icon;

  const MenusItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenusItem> itemsFirst = [
    itemsSignOut,
  ];
  static const itemsSignOut = MenusItem(
    text: 'Sign Out',
    icon: Icons.logout,
  );
}
