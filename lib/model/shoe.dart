import 'package:flutter/widgets.dart';

/// Model class Shoe
/// Use it only for storing types of shoes available for displaying on the website
/// This class is a data class, do not extend it, or add methods to it
/// Use EXTENSION FUNCTIONS ONLY for adding more functionality to this
class Shoe {
  /// name of the show
  String name;

  /// price of the show
  double price;

  /// describe the shoe
  String description;

  /// country of origin
  String origin;

  /// Path to image asset
  AssetImage image;

  Shoe(
      {required this.name,
      required this.price,
      required this.description,
      required this.origin,
      required this.image});
  //constructor

  @override
  String toString() {
    var buffer = StringBuffer();
    buffer.write("Object of class 'Shoe':");
    buffer.write("name = $name, ");
    buffer.write("price = $price, ");
    buffer.write("description = $description, ");
    buffer.write("origin = $origin, ");
    buffer.write("image = ${image.assetName}");

    return buffer.toString();
  }

  /// Use this method if you want an object which is the copy of another object, but with some changes
  Shoe copy(
      {String? name,
      double? price,
      String? description,
      String? origin,
      AssetImage? image}) {
    return Shoe(
        name: name ?? this.name,
        price: price ?? this.price,
        description: description ?? this.description,
        origin: origin ?? this.origin,
        image: image ?? this.image);
  }

  /// Use this method for comparing two shoe objects
  bool equals(Shoe shoe) {
    if (name == shoe.name &&
        price == shoe.price &&
        description == shoe.description &&
        origin == shoe.origin &&
        image.assetName == shoe.image.assetName) {
      return true;
    } else {
      return false;
    }
  }
}
