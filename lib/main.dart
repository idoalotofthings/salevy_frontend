import 'package:flutter/material.dart';
import 'package:salevy_frontend/theme/color_schemes.dart';

void main(List<String> args) {
  runApp(const SalevyApp());
}

class SalevyApp extends StatelessWidget {
  const SalevyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true
      ),

      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true
      ),
    );
  }
}
