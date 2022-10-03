import 'package:flutter/material.dart';
import 'package:salevy_frontend/data/shoe_datasource.dart';
import 'package:salevy_frontend/model/shoe.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsRoute extends StatelessWidget {
  final Shoe shoe;

  const ProductDetailsRoute(this.shoe, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // TODO: Create details page. cc @Enjoyinbreaks
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Salevy",
              style: GoogleFonts.passionsConflict(fontSize: 90),
              textAlign: TextAlign.center,
            ),
          ),
          toolbarHeight: 110,
          centerTitle: true,
        ),
        body: Row(children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: shoe.image,
                  height: 300.0,
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    shoe.name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 70.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    shoe.description,
                    style: const TextStyle(color: Colors.grey, fontSize: 25.0),
                  ),
                  Text(
                    'Proudly made in ${shoe.origin}',
                    style: const TextStyle(color: Colors.grey, fontSize: 25.0),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  Row(children: [
                    const Text(
                      'Only For:',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      shoe.price.toString(),
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text('Rs'),
                  ])
                ],
              ))
        ]));
  }
}
