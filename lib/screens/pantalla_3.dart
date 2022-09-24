import 'package:camellapp/widgets/card_type1.dart';
import 'package:camellapp/widgets/card_type3.dart';
import 'package:flutter/material.dart';



class CategoriasDeTrabajo extends StatelessWidget {
  const CategoriasDeTrabajo({super.key});
  final Categorias = const [
    'Obra Blanca',
    'Obra Negra',
    'Electricista',
    'Aseadora',
    'Repeyo'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categorias de Trabajo"),
        elevation: 5,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.directions_train_outlined),
                title: Text(Categorias[index]),
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: Categorias.length),
    );
  }
}
