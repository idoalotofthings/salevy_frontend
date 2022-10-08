import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/model/shoe/shoe.dart';
import 'package:salevy_frontend/ui/animations/hover.dart';

class ShoeCard extends StatelessWidget {
  final Shoe shoe;
  final void Function() callback; // callback function for onTap.

  const ShoeCard(this.shoe, {required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: OnHover(builder: (onHovered) {
        return Container(
          color: Colors.brown,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 300,
              width: 300,
              child: Card(
                elevation: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: shoe.image,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        shoe.name,
                        style: GoogleFonts.passionsConflict(fontSize: 48),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
