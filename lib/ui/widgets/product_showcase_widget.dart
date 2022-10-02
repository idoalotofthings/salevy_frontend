import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:salevy_frontend/ui/widgets/shoe_card_list.dart';

class ProductShowcaseWidget extends StatefulWidget {
  const ProductShowcaseWidget({super.key});

  @override
  State<ProductShowcaseWidget> createState() => _ProductShowcaseWidgetState();
}

class _ProductShowcaseWidgetState extends State<ProductShowcaseWidget> {
  final _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: IconButton(
              onPressed: () => _controller.previousPage(),
              icon: const Icon(Icons.chevron_left)),
        ),
        SizedBox(
          width: 1000,
          child: CarouselSlider(
            items: shoeCardList,
            options: CarouselOptions(
                enlargeCenterPage: true,
                height: 800,
                initialPage: 2,
                viewportFraction: 0.3),
            carouselController: _controller,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: IconButton(
              onPressed: () => _controller.nextPage(),
              icon: const Icon(Icons.chevron_right)),
        ),
      ],
    );
  }
}
