// To parse this JSON data, do
//
//     final workModel = workModelFromJson(jsonString);

import 'dart:convert';

WorkModel workModelFromJson(String str) => WorkModel.fromJson(json.decode(str));

String workModelToJson(WorkModel data) => json.encode(data.toJson());

class WorkModel {
  int id;
  String userName;
  ServiceDetails serviceDetails;
  String platformFee;
  String slotStartTime;
  String slotEndTime;
  DateTime bookingDate;
  String status;

  WorkModel({
    required this.id,
    required this.userName,
    required this.serviceDetails,
    required this.platformFee,
    required this.slotStartTime,
    required this.slotEndTime,
    required this.bookingDate,
    required this.status,
  });

  factory WorkModel.fromJson(Map<String, dynamic> json) => WorkModel(
        id: json["id"],
        userName: json["user_name"],
        serviceDetails: ServiceDetails.fromJson(json["service_details"]),
        platformFee: json["platform_fee"],
        slotStartTime: json["slot_start_time"],
        slotEndTime: json["slot_end_time"],
        bookingDate: DateTime.parse(json["booking_date"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_name": userName,
        "service_details": serviceDetails.toJson(),
        "platform_fee": platformFee,
        "slot_start_time": slotStartTime,
        "slot_end_time": slotEndTime,
        "booking_date": bookingDate.toIso8601String(),
        "status": status,
      };
}

class ServiceDetails {
  int service;
  String serviceName;
  int price;
  String categoryName;

  ServiceDetails({
    required this.service,
    required this.serviceName,
    required this.price,
    required this.categoryName,
  });

  factory ServiceDetails.fromJson(Map<String, dynamic> json) => ServiceDetails(
        service: json["service"],
        serviceName: json["service_name"],
        price: json["price"],
        categoryName: json["category_name"],
      );

  Map<String, dynamic> toJson() => {
        "service": service,
        "service_name": serviceName,
        "price": price,
        "category_name": categoryName,
      };
}
