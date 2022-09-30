import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const SalevyApp());
}

class SalevyApp extends StatelessWidget {
  const SalevyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      )
    );
  }
}
