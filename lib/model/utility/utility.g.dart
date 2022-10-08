// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utility.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

class Utility {
  final String description;
  final Icon image;

  const Utility({
    required this.description,
    required this.image,
  });

  @override
  String toString() {
    return 'Utility description = $description, image = $image';
  }

  bool equals(Utility utility) {
    if (description == utility.description && image == utility.image) {
      return true;
    } else {
      return false;
    }
  }

  Utility copy({String? description, Icon? image}) {
    return Utility(
        description: description ?? this.description,
        image: image ?? this.image);
  }
}
