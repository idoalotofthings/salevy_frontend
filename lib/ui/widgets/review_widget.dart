import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/model/review/review.dart';
import 'package:salevy_frontend/ui/widgets/icon_text.dart';

class ReviewWidget extends StatelessWidget {
  final Review review;

  const ReviewWidget(this.review, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 400,
            ),
            Text(
              review.username,
              style: GoogleFonts.adventPro(
                  fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: IconText(
                  text: review.rating.toString(),
                  style: GoogleFonts.adventPro(),
                  icon: const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )),
            ),
            const SizedBox(
              width: 300,
            )
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 430,
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Text(
                review.message,
                style: GoogleFonts.adventPro(fontSize: 25),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
