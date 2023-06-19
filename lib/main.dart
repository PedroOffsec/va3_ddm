import 'package:flutter/material.dart';

import 'basic_screen.dart';

void main() => runApp(const StaticApp());

class StaticApp extends StatelessWidget {
  const StaticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "VA3",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const BasicScreen(),
    );
  }
}
