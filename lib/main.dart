import 'package:flutter/material.dart';
import 'package:ku_sepak/menu.dart';

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
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)
      .copyWith(secondary: Colors.amberAccent[700]),      ),
      home: MyHomePage(),
    );
  }
}