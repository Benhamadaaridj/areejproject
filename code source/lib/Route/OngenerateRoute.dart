import 'package:flutter/material.dart';
import 'package:prj_1/FirstScreen.dart';
import 'package:prj_1/GroupScreen.dart';
import 'package:prj_1/Login/Login.dart';
import 'package:prj_1/Route/ErrorRoute.dart';
import 'package:prj_1/Screen/AllTable.dart';
import 'package:prj_1/Screen/HomePage.dart';

class AppRoute {
  Route? OngenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'Login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case 'Fisrt':
        return MaterialPageRoute(builder: (_) => const FirstScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
    /*  case '/group':
        return MaterialPageRoute(builder: (_)=>const GroupScreen());*/
        case '/table':
        return MaterialPageRoute(builder: (_)=>const MainPage());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorRoute());
    }
  }
}
