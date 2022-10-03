import 'package:animations/animations.dart';
import 'package:salevy_frontend/data/shoe_datasource.dart';
import 'package:salevy_frontend/ui/product_details_page.dart';
import 'package:salevy_frontend/ui/widgets/shoe_card.dart';
import 'package:salevy_frontend/model/shoe.dart';
import 'package:flutter/material.dart';

List<Widget> generateShoeCardList(List<Shoe> shoeList) {
  List<Widget> list = [];

  for (Shoe shoe in shoeList) {
    list.add(OpenContainer(
      transitionDuration: const Duration(milliseconds: 400),
      closedBuilder: (context, action) => ShoeCard(shoe, callback: action),
      openBuilder: (context, _) => ProductDetailsRoute(shoe),
    ));
  }

  return list;
}

final shoeCardList = generateShoeCardList(shoes);
