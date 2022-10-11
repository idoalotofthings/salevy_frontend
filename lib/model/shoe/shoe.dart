import 'package:annotations/annotations.dart';
import 'package:flutter/widgets.dart';
import 'package:salevy_frontend/model/review/review.dart';

part "shoe.g.dart";

/// Model class Abstract Shoe for generating Shoe data class
@dataClass
// ignore: unused_element
class _AbsShoe {
  late String name;
  late double price;
  late String description;
  late String origin;
  late AssetImage image;
  late AssetImage originImage;
  late List<Review> reviews;
}
