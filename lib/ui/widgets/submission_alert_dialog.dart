import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmissionAlertDialog extends StatelessWidget {
  final BuildContext routeContext;

  const SubmissionAlertDialog({required this.routeContext, super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
          content: SizedBox(
        height: 150,
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Your feedback has been sent",
              style: GoogleFonts.adventPro(fontSize: 32),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(routeContext);
                    Navigator.pop(context);
                  },
                  child: const Text("Return"),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
