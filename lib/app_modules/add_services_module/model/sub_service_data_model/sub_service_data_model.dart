// To parse this JSON data, do
//
//     final subServiceDataModel = subServiceDataModelFromJson(jsonString);

import 'dart:convert';

List<SubServiceDataModel> subServiceDataModelFromJson(String str) =>
    List<SubServiceDataModel>.from(
        json.decode(str).map((x) => SubServiceDataModel.fromJson(x)));

String subServiceDataModelToJson(List<SubServiceDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SubServiceDataModel {
  int category;
  int serviceProvider;
  int service;
  String price;

  SubServiceDataModel({
    required this.category,
    required this.serviceProvider,
    required this.service,
    required this.price,
  });

  factory SubServiceDataModel.fromJson(Map<String, dynamic> json) =>
      SubServiceDataModel(
        category: json["category"],
        serviceProvider: json["service_provider"],
        service: json["service"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "service_provider": serviceProvider,
        "service": service,
        "price": price,
      };
}
