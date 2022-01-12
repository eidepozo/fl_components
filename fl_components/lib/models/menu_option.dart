// establecer una clase que defina la representacion de las rutas?

import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route; // nombre de la ruta
  final String name;
  final Widget screen;
  final IconData icon;

  MenuOption(
      {required this.route,
      required this.name,
      required this.screen,
      required this.icon}); // nombre que se ve en el listtile
}
