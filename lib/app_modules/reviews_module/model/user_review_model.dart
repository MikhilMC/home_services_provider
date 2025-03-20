// To parse this JSON data, do
//
//     final userReviewModel = userReviewModelFromJson(jsonString);

import 'dart:convert';

List<UserReviewModel> userReviewModelFromJson(String str) =>
    List<UserReviewModel>.from(
        json.decode(str).map((x) => UserReviewModel.fromJson(x)));

String userReviewModelToJson(List<UserReviewModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserReviewModel {
  int id;
  String reviewText;
  int rating;
  BookingDetails bookingDetails;
  DateTime createdAt;

  UserReviewModel({
    required this.id,
    required this.reviewText,
    required this.rating,
    required this.bookingDetails,
    required this.createdAt,
  });

  factory UserReviewModel.fromJson(Map<String, dynamic> json) =>
      UserReviewModel(
        id: json["id"],
        reviewText: json["review_text"],
        rating: json["rating"],
        bookingDetails: BookingDetails.fromJson(json["booking_details"]),
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "review_text": reviewText,
        "rating": rating,
        "booking_details": bookingDetails.toJson(),
        "created_at": createdAt.toIso8601String(),
      };
}

class BookingDetails {
  int id;
  String serviceName;
  String userName;
  DateTime bookingDate;
  String status;

  BookingDetails({
    required this.id,
    required this.serviceName,
    required this.userName,
    required this.bookingDate,
    required this.status,
  });

  factory BookingDetails.fromJson(Map<String, dynamic> json) => BookingDetails(
        id: json["id"],
        serviceName: json["service_name"],
        userName: json["user_name"],
        bookingDate: DateTime.parse(json["booking_date"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "service_name": serviceName,
        "user_name": userName,
        "booking_date": bookingDate.toIso8601String(),
        "status": status,
      };
}
