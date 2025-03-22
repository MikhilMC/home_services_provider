// To parse this JSON data, do
//
//     final servicesBookingModel = servicesBookingModelFromJson(jsonString);

import 'dart:convert';

ServicesBookingModel servicesBookingModelFromJson(String str) =>
    ServicesBookingModel.fromJson(json.decode(str));

String servicesBookingModelToJson(ServicesBookingModel data) =>
    json.encode(data.toJson());

class ServicesBookingModel {
  List<Service> bookedServices;
  List<Service> ongoingServices;

  ServicesBookingModel({
    required this.bookedServices,
    required this.ongoingServices,
  });

  factory ServicesBookingModel.fromJson(Map<String, dynamic> json) =>
      ServicesBookingModel(
        bookedServices: List<Service>.from(
            json["booked_services"].map((x) => Service.fromJson(x))),
        ongoingServices: List<Service>.from(
            json["ongoing_services"].map((x) => Service.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "booked_services":
            List<dynamic>.from(bookedServices.map((x) => x.toJson())),
        "ongoing_services":
            List<dynamic>.from(ongoingServices.map((x) => x.toJson())),
      };
}

class Service {
  int id;
  String userName;
  ServiceDetails serviceDetails;
  String platformFee;
  String slotStartTime;
  String slotEndTime;
  DateTime bookingDate;
  String status;

  Service({
    required this.id,
    required this.userName,
    required this.serviceDetails,
    required this.platformFee,
    required this.slotStartTime,
    required this.slotEndTime,
    required this.bookingDate,
    required this.status,
  });

  factory Service.fromJson(Map<String, dynamic> json) => Service(
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
  double price;
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
        price: json["price"]?.toDouble(),
        categoryName: json["category_name"],
      );

  Map<String, dynamic> toJson() => {
        "service": service,
        "service_name": serviceName,
        "price": price,
        "category_name": categoryName,
      };
}
