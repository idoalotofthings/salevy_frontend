import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/model/shoe/shoe.dart';

class SingleProductDetailWidget extends StatefulWidget {
  final Shoe shoe;

  const SingleProductDetailWidget(this.shoe, {super.key});

  @override
  State<SingleProductDetailWidget> createState() =>
      _SingleProductDetailWidgetState();
}

class _SingleProductDetailWidgetState extends State<SingleProductDetailWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(64.0),
                  child: SizedBox(
                    height: 500,
                    width: 500,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 32,
                        shape: const CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Stack(children: [
                            Image(
                                width: 400,
                                height: 400,
                                image: widget.shoe.image),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(
                                  width: 70,
                                  height: 70,
                                  child: Card(
                                    shape: const CircleBorder(),
                                    elevation: 32,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image(
                                        fit: BoxFit.fill,
                                        image: widget.shoe.originImage,
                                      ),
                                    ),
                                  )),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(64.0),
                child: SizedBox(
                  height: 500,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.shoe.name,
                          style: GoogleFonts.adventPro(
                              fontSize: 64, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        widget.shoe.description,
                        style: GoogleFonts.adventPro(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 64.0),
                        child: Text(
                          "Price: \$${widget.shoe.price}",
                          style: GoogleFonts.adventPro(
                              fontSize: 64, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
