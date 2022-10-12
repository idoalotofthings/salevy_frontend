// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

class Review {
  final String username;
  final int rating;
  final String message;

  const Review({
    required this.username,
    required this.rating,
    required this.message,
  });

  @override
  String toString() {
    return 'Review username = $username, rating = $rating, message = $message';
  }

  bool equals(Review review) {
    if (username == review.username &&
        rating == review.rating &&
        message == review.message) {
      return true;
    } else {
      return false;
    }
  }

  Review copy({String? username, int? rating, String? message}) {
    return Review(
        username: username ?? this.username,
        rating: rating ?? this.rating,
        message: message ?? this.message);
  }
}
