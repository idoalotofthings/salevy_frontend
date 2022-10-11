// Datasource file for the shoes.
// cc @enjoyinbreaks add reviews lists
import 'package:flutter/widgets.dart';
import 'package:salevy_frontend/model/shoe/shoe.dart';

const shoes = [
  Shoe(
      name: "Sporty Wind",
      price: 150,
      description: "Made with the best quality leather from the United States",
      origin: "USA",
      image: AssetImage("assets/images/sporty.png"),
      originImage: AssetImage("assets/images/flags/usa.webp"),
      reviews: []),
  Shoe(
      name: "Ocean's Wave",
      price: 200,
      description: "Wear it and fly like the waves of the ocean",
      origin: "UK",
      image: AssetImage("assets/images/ocean.png"),
      originImage: AssetImage("assets/images/flags/uk.webp"),
      reviews: []),
  Shoe(
      name: "Nightly Wear",
      price: 450,
      description: "Make your shoes glow in the dark",
      origin: "Australia",
      image: AssetImage("assets/images/nightly.png"),
      originImage: AssetImage("assets/images/flags/aus.jpg"),
      reviews: []),
  Shoe(
      name: "Footballer's Companion",
      price: 500,
      description: "The best soccer shoes you can ever get!",
      origin: "UK",
      image:  AssetImage("assets/images/football.png"),
      originImage: AssetImage("assets/images/flags/uk.webp"),
      reviews: []),
  Shoe(
      name: "Mountaineer's Companion",
      price: 500,
      description: "Give your legs some comfort while you scale the heights",
      origin: "Canada",
      image:  AssetImage("assets/images/mountain.png"),
      originImage: AssetImage("assets/images/flags/canada.png"),
      reviews: []),
  Shoe(
      name: "On The Go",
      price: 300,
      description: "You can wear em' anytime, anyday",
      origin: "India",
      image:  AssetImage("assets/images/onthego.png"),
      originImage: AssetImage("assets/images/flags/india.webp"),
      reviews: []),
  Shoe(
      name: "Loafers",
      price: 350,
      description: "Happy Feets! Happy Smiles!",
      origin: 'Germany',
      image:  AssetImage("assets/images/loafers.png"),
      originImage: AssetImage("assets/images/flags/germany.webp"),
      reviews: []),
  Shoe(
      name: "Pumps",
      price: 550,
      description: "Look party ready al' the time",
      origin: 'Italy',
      image:  AssetImage('assets/images/pumps.png'),
      originImage: AssetImage("assets/images/flags/italy.png"),
      reviews: []),
  Shoe(
      name: 'Sliders',
      price: 150,
      description:
          "It's easier to put on slippers, than to cover whole world with carpet.",
      origin: 'India',
      image: AssetImage('assets/images/sliders.png'),
      originImage: AssetImage("assets/images/flags/india.webp"),
      reviews: [])
];
