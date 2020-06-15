import 'package:authenticationdemoapp/view/home_page.dart';
import 'package:authenticationdemoapp/view/screens/authentication/login_screen.dart';
import 'package:authenticationdemoapp/view/screens/authentication/register_screen.dart';
import 'package:flutter/material.dart';

const String initialRoute = "login";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home' :
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'login' :
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case 'register' :
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text("No route defined for ${settings.name}"),
              ),
            ));
    }
  }
}