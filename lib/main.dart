import 'package:flutter/material.dart';
import 'package:food_gallery/utils/routes.dart';
import 'pages/All.dart';
import 'pages/Event.dart';
import 'pages/Food.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                color: Colors.white,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
                textTheme: Theme.of(context).textTheme)),
        routes: {
          "/": (context) => All(),
          MyRoutes.food: (context) => Food(),
          MyRoutes.event: (context) => Event(),
        });
  }
}
