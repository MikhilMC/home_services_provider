// To parse this JSON data, do
//
//     final serviceModel = serviceModelFromJson(jsonString);

import 'dart:convert';

ServiceModel serviceModelFromJson(String str) =>
    ServiceModel.fromJson(json.decode(str));

String serviceModelToJson(ServiceModel data) => json.encode(data.toJson());

class ServiceModel {
  Category category;
  List<Service> services;

  ServiceModel({
    required this.category,
    required this.services,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        category: Category.fromJson(json["category"]),
        services: List<Service>.from(
            json["services"].map((x) => Service.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category": category.toJson(),
        "services": List<dynamic>.from(services.map((x) => x.toJson())),
      };
}

class Category {
  int id;
  String category;

  Category({
    required this.id,
    required this.category,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
      };
}

class Service {
  int service;
  String serviceName;
  double price;

  Service({
    required this.service,
    required this.serviceName,
    required this.price,
  });

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        service: json["service"],
        serviceName: json["service_name"],
        price: json["price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "service": service,
        "service_name": serviceName,
        "price": price,
      };
}
