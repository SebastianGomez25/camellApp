import 'package:camellapp/models/menu_option.dart';
import 'package:camellapp/routers/app_routes.dart';
import 'package:flutter/material.dart';

class PantallaDeInicio extends StatelessWidget {
  const PantallaDeInicio({super.key});
  final categorias = const [
    'Obra Blanca',
    'Electricista',
    'Obra negra',
    'Aseador',
    'Podador'
  ];

  @override
  Widget build(BuildContext context) {
    final MenuOption = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(title: const Text("CamellApp")),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(MenuOption[index].icons),
            title: Text(MenuOption[index].name),
            // textColor: Colors.black,
            // iconColor: Colors.black87,
            // tileColor: Colors.grey,
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const ListviewScreen());
              // Navigator.push(context, route);

              Navigator.pushNamed(context, MenuOption[index].routes);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length,
        ));
  }
}
