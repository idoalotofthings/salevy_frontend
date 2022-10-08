// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoe.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

class Shoe {
  final String name;
  final double price;
  final String description;
  final String origin;
  final AssetImage image;

  const Shoe({
    required this.name,
    required this.price,
    required this.description,
    required this.origin,
    required this.image,
  });

  @override
  String toString() {
    return 'Shoe name = $name, price = $price, description = $description, origin = $origin, image = $image';
  }

  bool equals(Shoe shoe) {
    if (name == shoe.name &&
        price == shoe.price &&
        description == shoe.description &&
        origin == shoe.origin &&
        image == shoe.image) {
      return true;
    } else {
      return false;
    }
  }

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
}
