import 'package:camellapp/screens/pantalla_3.dart';
import 'package:camellapp/screens/pantalla_inicio.dart';
import 'package:flutter/material.dart';
import 'package:camellapp/models/models.dart';
import 'package:camellapp/screens/screens.dart';
import 'package:camellapp/screens/pantalla_inicio.dart';
import 'package:camellapp/screens/pantalla_2.dart';




class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      routes: 'home',
      name: 'Pantalla De Inicio',
      screens: const PantallaDeInicio(),
      icons: Icons.home_max_outlined,
    ),
    MenuOption(
        routes: 'card',
        icons: Icons.list,
        name: 'Interfaz',
        screens: const Interfaz()),
    MenuOption(
        routes: 'cat',
        icons: Icons.add_home_work,
        name: 'Categorias de Trabajo',
        screens: const CategoriasDeTrabajo()),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes
          .addAll({option.routes: (BuildContext context) => option.screens});
    }
    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const PantallaDeInicio(),
    'card': (BuildContext context) => const Interfaz(),
    'cat': (BuildContext context) => const CategoriasDeTrabajo()
  };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const PantallaDeInicio(),
    );
  }
}
