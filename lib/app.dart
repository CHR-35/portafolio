import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

class MiPortafolioApp extends StatelessWidget {
  const MiPortafolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Portafolio',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
    );
  }
}
