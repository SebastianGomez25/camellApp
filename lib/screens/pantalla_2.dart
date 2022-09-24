import 'package:camellapp/widgets/card_type2.dart';
import 'package:flutter/material.dart';
import 'package:camellapp/widgets/card_type1.dart';

class Interfaz extends StatelessWidget {
  const Interfaz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interfaz"),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        children: const [
          CardType1(),
          SizedBox(height: 30),
          CardType2(
            name: "CamellApp",
            imageUrl:
                "https://c8.alamy.com/compes/2e2j6jd/joven-trabajador-independiente-en-el-escritorio-usando-el-portatil-2e2j6jd.jpg",
          ),
        ],
      ),
    );
  }
}
