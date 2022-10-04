import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/str/str_res.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Theme.of(context).colorScheme.onSurface,
      ),
      height: 170,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$aboutUs\n",
              textAlign: TextAlign.center,
              style: GoogleFonts.adventPro(
                  fontSize: 25, color: Theme.of(context).colorScheme.surface),
            ),
          ),
          Text(
            "$authors\n",
            style: GoogleFonts.adventPro(
                color: Theme.of(context).colorScheme.surface),
          )
        ],
      ),
    );
  }
}
