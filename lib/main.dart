import 'package:flutter/material.dart';
import 'package:camellapp/theme/app_theme.dart';
import 'package:camellapp/routers/app_routes.dart';
import 'package:camellapp/screens/pantalla_inicio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      color: Colors.blue[200],
      // home: ListviewSeparatedScreen(),

      // initialRoute: AppRoutes.initialRoute,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,

      theme: AppTheme.temaClaro,
    );
    //);
    // home: ListviewScreen());
  }
}
