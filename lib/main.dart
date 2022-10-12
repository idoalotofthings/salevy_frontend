import 'package:flutter/material.dart';
import 'package:salevy_frontend/theme/color_schemes.dart';
import 'package:salevy_frontend/ui/entrypoint_webpage.dart';
import 'package:salevy_frontend/ui/viewmodel/viewmodel.dart';

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
  final viewModel = SalevyViewModel();

  @override
  Widget build(BuildContext context) {
    // See LiveData$observe
    // calls the method passed as the parameter whenever the value of the theme changes
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
