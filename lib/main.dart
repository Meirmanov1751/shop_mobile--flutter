import 'package:flutter/material.dart';
import './screens/HomeScreens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.white,
      ),
      home: const MyHomePage(title: 'Shop Demo App'),
    );
  }
}


