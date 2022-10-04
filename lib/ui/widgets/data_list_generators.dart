import 'package:animations/animations.dart';
import 'package:salevy_frontend/data/shoe_datasource.dart';
import 'package:salevy_frontend/ui/product_details_page.dart';
import 'package:salevy_frontend/ui/widgets/shoe_card.dart';
import 'package:salevy_frontend/model/shoe.dart';
import 'package:flutter/material.dart';


// Generates a list of shoe cards for the carousel
List<Widget> generateShoeCardList(List<Shoe> shoeList) {
  List<Widget> list = [];

  for (Shoe shoe in shoeList) {
    // Container Transform transition
    list.add(OpenContainer(
      transitionDuration: const Duration(milliseconds: 400),
      closedBuilder: (context, action) => ShoeCard(shoe, callback: action),
      openBuilder: (context, _) => const ProductDetailsRoute(),
    ));
  }

  return list;
}

final shoeCardList = generateShoeCardList(shoes);
