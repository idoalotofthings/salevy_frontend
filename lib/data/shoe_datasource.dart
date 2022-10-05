// Datasource file for the shoes.

import 'package:flutter/widgets.dart';
import 'package:salevy_frontend/model/shoe.dart';

final shoes = [
  Shoe(
      name: "Sporty Wind",
      price: 150,
      description: "Made with the best quality leather from the United States",
      origin: "USA",
      image: const AssetImage("assets/images/sporty.png")),
  Shoe(
      name: "Ocean's Wave",
      price: 200,
      description: "Wear it and fly like the waves of the ocean",
      origin: "UK",
      image: const AssetImage("assets/images/ocean.png")),
  Shoe(
      name: "Nightly Wear",
      price: 450,
      description: "Make your shoes glow in the dark",
      origin: "Australia",
      image: const AssetImage("assets/images/nightly.png")),
  Shoe(
      name: "Footballer's Companion",
      price: 500,
      description: "The best soccer shoes you can ever get!",
      origin: "UK",
      image: const AssetImage("assets/images/football.png")),
  Shoe(
      name: "Mountaineer's Companion",
      price: 500,
      description: "Give your legs some comfort while you scale the heights",
      origin: "Canada",
      image: const AssetImage("assets/images/mountain.png")),
  Shoe(
      name: "On The Go",
      price: 300,
      description: "You can wear em' anytime, anyday",
      origin: "India",
      image: const AssetImage("assets/images/onthego.png")),
  Shoe(
      name: "Loafers",
      price: 350,
      description: "Happy Feets! Happy Smiles!",
      origin: 'Germany',
      image: const AssetImage("assets/images/loafers.png")),
  Shoe(
      name: "Pumps",
      price: 550,
      description: "Look party ready al' the time",
      origin: 'Italy',
      image: const AssetImage('assets/images/pumps.png')),
  Shoe(
      name: 'Sliders',
      price: 150,
      description:
          "It's easire to put on slippers, than to cover whole world with carpet.",
      origin: 'India',
      image: AssetImage('assets/images/sliders.png'))
];
