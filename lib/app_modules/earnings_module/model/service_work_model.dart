// To parse this JSON data, do
//
//     final serviceWorkModel = serviceWorkModelFromJson(jsonString);

import 'dart:convert';

List<ServiceWorkModel> serviceWorkModelFromJson(String str) =>
    List<ServiceWorkModel>.from(
        json.decode(str).map((x) => ServiceWorkModel.fromJson(x)));

String serviceWorkModelToJson(List<ServiceWorkModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ServiceWorkModel {
  String serviceName;
  DateTime bookingDate;
  double totalAmount;

  ServiceWorkModel({
    required this.serviceName,
    required this.bookingDate,
    required this.totalAmount,
  });

  factory ServiceWorkModel.fromJson(Map<String, dynamic> json) =>
      ServiceWorkModel(
        serviceName: json["service_name"],
        bookingDate: DateTime.parse(json["booking_date"]),
        totalAmount: json["total_amount"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "service_name": serviceName,
        "booking_date":
            "${bookingDate.year.toString().padLeft(4, '0')}-${bookingDate.month.toString().padLeft(2, '0')}-${bookingDate.day.toString().padLeft(2, '0')}",
        "total_amount": totalAmount,
      };
}
