import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:salevy_frontend/ui/widgets/data_list_generators.dart';

class ProductShowcaseWidget extends StatefulWidget {
  const ProductShowcaseWidget({super.key});

  @override
  State<ProductShowcaseWidget> createState() => _ProductShowcaseWidgetState();
}

class _ProductShowcaseWidgetState extends State<ProductShowcaseWidget> {
  final _controller = CarouselController();
  var viewportFraction = 0.3;

  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 700) {
      setState(() {
        viewportFraction = 0.8;
      });
    } else {
      setState(() {
        viewportFraction = 0.3;
      });
    }

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/shoesstore.jpg"),
              fit: BoxFit.fill)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              onPressed: () => _controller.previousPage(),
              icon: const Icon(Icons.chevron_left),
              iconSize: 80,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 150,
            child: CarouselSlider(
              items: shoeCardList,
              options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 15),
                  enlargeCenterPage: true,
                  height: 800,
                  viewportFraction: viewportFraction),
              carouselController: _controller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              onPressed: () => _controller.nextPage(),
              icon: const Icon(Icons.chevron_right),
              iconSize: 80,
              color: Colors.white,
            ),

          ),
        ],
      ),
    );
  }
}
