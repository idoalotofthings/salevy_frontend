// Datasource file for the shoes.
import 'package:flutter/widgets.dart';
import 'package:salevy_frontend/model/shoe/shoe.dart';

const shoes = [
  Shoe(
      name: "Sporty Wind",
      price: 150,
      description: "Made with the best quality leather from the United States. Fits easily and allows you to feel the wind while playing your favourite sport. With durable soals that never leave your side so that you can be worry-free.",
      origin: "USA",
      image: AssetImage("assets/images/sporty.png")),
  Shoe(
      name: "Ocean's Wave",
      price: 200,
      description: "Wear it and surf like the waves of the ocean. Certainly, the right pair of shoes that can make you feel amazing and colors which refreshes your mood. ",
      origin: "UK",
      image: AssetImage("assets/images/ocean.png")),
  Shoe(
      name: "Nightly Wear",
      price: 450,
      description: "Make your shoes glow in the dark. This shoe is your best option if you are looking for a stylish, comfortable, and reliable pair of shoes. The shoe is made with the utmost attention to detail, providing the wearer with a more enjoyable and pleasurable experience.",
      origin: "Australia",
      image: AssetImage("assets/images/nightly.png")),
  Shoe(
      name: "Footballer's Companion",
      price: 500,
      description: "The best soccer shoes you can ever get! These shoes have studs in the soal to prevent you from slipping during your match. The shoe body is hardened to secure you from any damage.",
      origin: "UK",
      image:  AssetImage("assets/images/football.png")),
  Shoe(
      name: "Mountaineer's Companion",
      price: 500,
      description: "Give your legs some comfort while you scale the heights. Made for those who love adventure in their life, this shoe helps them to reach their summit easier. With added protection and waterproofing, to keep you going in all conditions. ",
      origin: "Canada",
      image:  AssetImage("assets/images/mountain.png")),
  Shoe(
      name: "On The Go",
      price: 300,
      description: "You can wear em' anytime, anyday! Thanks to the comfort they provide, these shoes improve the quality of life of their wearer.",
      origin: "India",
      image:  AssetImage("assets/images/onthego.png")),
  Shoe(
      name: "Loafers",
      price: 350,
      description: "Happy Feets! Happy Smiles!",
      origin: 'Germany',
      image:  AssetImage("assets/images/loafers.png")),
  Shoe(
      name: "Pumps",
      price: 550,
      description: "Look party ready al' the time",
      origin: 'Italy',
      image:  AssetImage('assets/images/pumps.png')),
  Shoe(
      name: 'Sliders',
      price: 150,
      description:
          "It's easire to put on slippers, than to cover whole world with carpet.",
      origin: 'India',
      image: AssetImage('assets/images/sliders.png'))
];
