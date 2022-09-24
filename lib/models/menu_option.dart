import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String routes;
  final IconData icons;
  final String name;
  final Widget screens;

  MenuOption(
      {required this.routes,
      required this.icons,
      required this.name,
      required this.screens});
}
