// Datasource file for the shoes.
//@cc idoalotofthings idk attach list to this
import 'package:flutter/widgets.dart';
import 'package:salevy_frontend/model/shoe/shoe.dart';
import 'package:salevy_frontend/data/review_datasource.dart';

const shoes = [
  Shoe(
      name: "Sporty Wind",
      price: 1000,
      description:
          "Made with the best quality leather from the United States. Fits easily and allows you to feel the wind while playing your favourite sport. With durable soals made with high-quality rubber, that never leaves your side.",
      origin: "USA",
      image: AssetImage("assets/images/sporty.png"),
      originImage: AssetImage("assets/images/flags/usa.webp"),
      reviews: sportyReviews),
  Shoe(
      name: "Ocean's Wave",
      price: 990,
      description:
          "Wear it and surf like the waves of the ocean. Certainly, the right pair of shoes that can make you feel amazing with colors which refreshes your mood. With multiple lace buckels to keep it secure.",
      origin: "UK",
      image: AssetImage("assets/images/ocean.png"),
      originImage: AssetImage("assets/images/flags/uk.webp"),
      reviews: oceanReviews),
  Shoe(
      name: "Nightly Wear",
      price: 560,
      description:
          "Make your shoes glow in the dark. This shoe is your best option if you are looking for a stylish, comfortable, and reliable pair of shoes. The shoe is made with the utmost attention to detail, providing the wearer with a more enjoyable and pleasurable experience.",
      origin: "Australia",
      image: AssetImage("assets/images/nightly.png"),
      originImage: AssetImage("assets/images/flags/aus.jpg"),
      reviews: nightlyReviews),
  Shoe(
      name: "Footballer's Companion",
      price: 600,
      description:
          "The best soccer shoes you can ever get! These shoes have studs in the soal to prevent you from slipping during your match. With Aero-dynamic design to keep you steady. The shoe material is waterproof to keep your feet dry.",
      origin: "UK",
      image: AssetImage("assets/images/football.png"),
      originImage: AssetImage("assets/images/flags/uk.webp"),
      reviews: footballReviews),
  Shoe(
      name: "Mountaineer's Companion",
      price: 2000,
      description:
          "Give your legs some comfort while you scale the heights. Made for those who love adventure in their life, this shoe helps them to reach their summit easier. With added protection and waterproofing, to keep you going in all conditions. ",
      origin: "Canada",
      image: AssetImage("assets/images/mountain.png"),
      originImage: AssetImage("assets/images/flags/canada.png"),
      reviews: mountainReviews),
  Shoe(
      name: "On The Go",
      price: 400,
      description:
          "You can wear em' anytime, anyday! The shoe is made up of Polyvinyl Chloride that absorbs sweat, also offering Lightweight, Breathability and shock-absorption, bringing you a Dry and Cool life.",
      origin: "India",
      image: AssetImage("assets/images/onthego.png"),
      originImage: AssetImage("assets/images/flags/india.webp"),
      reviews: onthegoReviews),
  Shoe(
      name: "Loafers",
      price: 500,
      description:
          "A casual slip-on! This shoe is made up of Faux leather that is perfect for party and with Ethinic wear. The footpad is made up of Jutis and Mojaris foam.",
      origin: 'Germany',
      image: AssetImage("assets/images/loafers.png"),
      originImage: AssetImage("assets/images/flags/germany.webp"),
      reviews: loafersReviews),
  Shoe(
      name: "Sandals",
      price: 400,
      description:
          "Look party ready al' the time! Made up of Resin which allows to pull on these Sandals. The heel is 1.5 inches with a cushioned footbed, also has Textured outside.",
      origin: 'Italy',
      image: AssetImage('assets/images/pumps.png'),
      originImage: AssetImage("assets/images/flags/italy.png"),
      reviews: pumpsReviews),
  Shoe(
      name: 'Sliders',
      price: 200,
      description:
          "It's easire to put on slippers, than to cover whole world with carpet. This slider will benefit in Diabetes and Orthroped with it's medicated soft pads. The rubber soal is Anti-Skid.",
      origin: 'India',
      image: AssetImage('assets/images/sliders.png'),
      originImage: AssetImage("assets/images/flags/india.webp"),
      reviews: slidersReviews)
];
