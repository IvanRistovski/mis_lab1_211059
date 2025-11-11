import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raspored za ispiti - 211059',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHomePage(title: 'Raspored za ispiti - 211059'),
        "/details": (context) => const DetailsPage(),
      },
    );
  }
}

