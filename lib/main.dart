import 'package:alcohol_or_gas/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData(
    primarySwatch: Colors.deepPurple,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou gasolina',
      debugShowCheckedModeBanner: false,
      theme: this.theme,
      home: HomePage(this.theme),
    );
  }
}
