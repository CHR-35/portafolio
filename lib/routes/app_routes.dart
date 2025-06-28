import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/about_me_screen.dart';
import '../screens/hobbies_screen.dart';
import '../screens/signature_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final routes = <String, WidgetBuilder>{
    'home': (_) => const HomeScreen(),
    'about': (_) => const AboutScreen(),
    'hobbies': (_) => const HobbiesScreen(),
    'signature': (_) => const SignatureScreen(),
  };
}
