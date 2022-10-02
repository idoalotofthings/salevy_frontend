import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/ui/widgets/product_showcase_widget.dart';

class MainRoute extends StatelessWidget {
  const MainRoute({super.key});

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
        ),
        body: Container(
          height: 400,
          alignment: Alignment.topCenter,
          child: const SizedBox(width: 1150, child: ProductShowcaseWidget()),
        ));
  }
}
