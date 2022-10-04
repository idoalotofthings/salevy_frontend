import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/res/str_res.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurface,
      child: Column(
        children: [
          Text(
            "$aboutUs\n",
            style: GoogleFonts.adventPro(
              fontSize: 16
            ),  
          ),

          


        ],
      ),
    );
  }
}
