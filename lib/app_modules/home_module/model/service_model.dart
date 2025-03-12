// To parse this JSON data, do
//
//     final serviceModel = serviceModelFromJson(jsonString);

import 'dart:convert';

ServiceModel serviceModelFromJson(String str) =>
    ServiceModel.fromJson(json.decode(str));

String serviceModelToJson(ServiceModel data) => json.encode(data.toJson());

class ServiceModel {
  List<ServiceElement> services;

  ServiceModel({
    required this.services,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        services: List<ServiceElement>.from(
            json["services"].map((x) => ServiceElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "services": List<dynamic>.from(services.map((x) => x.toJson())),
      };
}

class ServiceElement {
  Category category;
  int serviceProvider;
  ServiceService service;
  String price;

  ServiceElement({
    required this.category,
    required this.serviceProvider,
    required this.service,
    required this.price,
  });

  factory ServiceElement.fromJson(Map<String, dynamic> json) => ServiceElement(
        category: Category.fromJson(json["category"]),
        serviceProvider: json["service_provider"],
        service: ServiceService.fromJson(json["service"]),
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "category": category.toJson(),
        "service_provider": serviceProvider,
        "service": service.toJson(),
        "price": price,
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

class ServiceService {
  int id;
  int category;
  String serviceName;

  ServiceService({
    required this.id,
    required this.category,
    required this.serviceName,
  });

  factory ServiceService.fromJson(Map<String, dynamic> json) => ServiceService(
        id: json["id"],
        category: json["category"],
        serviceName: json["service_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
        "service_name": serviceName,
      };
}
