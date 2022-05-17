import 'package:crudapi/screens/auth/view/auth_page.dart';
import 'package:crudapi/screens/home/view/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static final Routes _instance = Routes._init();
  static Routes get instance => _instance;
  Routes._init();
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case "/home":
        return MaterialPageRoute(builder: (ctx) => HomePage());
      case "/auth":
        return MaterialPageRoute(builder: (ctx) => AuthPage());
    }
  }
}
