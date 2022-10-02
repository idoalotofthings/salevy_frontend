import 'package:flutter/material.dart';
import 'package:salevy_frontend/theme/color_schemes.dart';
import 'package:salevy_frontend/ui/entrypoint_webpage.dart';

void main(List<String> args) {
  runApp(const SalevyApp());
}

class SalevyApp extends StatelessWidget {
  const SalevyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: lightColorScheme, useMaterial3: true),
      darkTheme: ThemeData(colorScheme: darkColorScheme, useMaterial3: true),
      themeMode: ThemeMode.light,
      home: const MainRoute(),
    );
  }
}
