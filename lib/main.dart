import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // the 'build' is the method and the first letter of the method should be small.
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.light,
        ),
        initialRoute: "/home",
        routes: {
          "/": (context) =>
              new LoginPage(), //This is class and first letter of class should be capital.
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
        });
  }
}
