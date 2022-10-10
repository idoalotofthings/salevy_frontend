import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/model/shoe/shoe.dart';
import 'package:salevy_frontend/ui/widgets/app_bar.dart';
import 'package:salevy_frontend/ui/widgets/single_product_detail.dart';

class ProductDetailsRoute extends StatelessWidget {
  final Shoe shoe;

  const ProductDetailsRoute(this.shoe, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SalevyAppBar(
        title: shoe.name,
      ),
      body: Center(
        child: SingleProductDetailWidget(shoe),
      ),
    );
  }
}
