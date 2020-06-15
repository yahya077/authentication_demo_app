import 'package:authenticationdemoapp/providers/locator.dart';
import 'package:authenticationdemoapp/view/home_page.dart';
import 'package:authenticationdemoapp/view/routes.dart';
import 'package:authenticationdemoapp/view/screens/authentication/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/provider_setup.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providers,
        child: StartApp(),
    );
  }
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Flutter",
      initialRoute: initialRoute,
      onGenerateRoute: Router.generateRoute,
      home: HomePage(),
    );
  }
}


