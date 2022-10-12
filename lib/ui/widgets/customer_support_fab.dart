import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

import '../query_form_page.dart';

class CustomerSupportFAB extends StatelessWidget {
  const CustomerSupportFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: OpenContainer(
        closedShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        transitionDuration: const Duration(milliseconds: 500),
        closedBuilder: (_, action) => Tooltip(
          message: "Customer Support",
          child: FloatingActionButton(
              onPressed: action,
              child: const Icon(
                Icons.message,
                size: 50,
              )),
        ),
        openBuilder: (context, _) => const QueryFormRoute(),
      ),
    );
  }
}
