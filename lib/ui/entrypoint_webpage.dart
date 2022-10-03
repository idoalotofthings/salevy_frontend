import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/ui/viewmodel/theme_viewmodel.dart';
import 'package:salevy_frontend/ui/widgets/product_showcase_widget.dart';

class MainRoute extends StatelessWidget {
  final ThemeMode themeMode;

  MainRoute({required this.themeMode, super.key});

  final viewModel = ThemeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Salevy",
              style: GoogleFonts.passionsConflict(fontSize: 90),
              textAlign: TextAlign.center,
            ),
          ),
          toolbarHeight: 110,
          actions: [
            IconButton(
                onPressed: () {
                  if (viewModel.theme.value == ThemeMode.light) {
                    viewModel.theme.value = ThemeMode.dark;
                  } else {
                    viewModel.theme.value = ThemeMode.light;
                  }
                },
                icon: const Icon(Icons.sunny))
          ],
        ),
        body: Container(
          height: 400,
          alignment: Alignment.topCenter,
          child: const SizedBox(width: 1150, child: ProductShowcaseWidget()),
          //getting widget from product_showcase_widget
        ));
  }
}
