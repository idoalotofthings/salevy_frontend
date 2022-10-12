import 'package:flutter/material.dart';
import 'package:salevy_frontend/data/review_datasource.dart';
import 'package:salevy_frontend/model/shoe/shoe.dart';
import 'package:salevy_frontend/ui/widgets/app_bar.dart';
import 'package:salevy_frontend/ui/widgets/review_widget.dart';
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
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 1300,
                    height: 600,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleProductDetailWidget(shoe),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ReviewWidget(reviews[index]),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
