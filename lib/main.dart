import 'package:flutter/material.dart';
import 'package:salevy_frontend/theme/color_schemes.dart';
import 'package:salevy_frontend/ui/entrypoint_webpage.dart';
import 'package:salevy_frontend/ui/viewmodel/theme_viewmodel.dart';

void main(List<String> args) {
  runApp(const SalevyApp());
}

class SalevyApp extends StatefulWidget {
  const SalevyApp({super.key});

  @override
  State<SalevyApp> createState() => _SalevyAppState();
}

class _SalevyAppState extends State<SalevyApp> {
  var themeMode = ThemeMode.light; //  this is now the member of the State.
  final viewModel = ThemeViewModel();

  @override
  Widget build(BuildContext context) {
    viewModel.theme.observe((newValue) {
      setState(() {
        themeMode = newValue;
      });
    });

    return MaterialApp(
      theme: ThemeData(colorScheme: lightColorScheme, useMaterial3: true),
      darkTheme: ThemeData(colorScheme: darkColorScheme, useMaterial3: true),
      themeMode: themeMode,
      home: MainRoute(themeMode: themeMode),
    );
  }
}
