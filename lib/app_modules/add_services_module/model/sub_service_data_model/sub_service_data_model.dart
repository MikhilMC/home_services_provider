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
  String serviceName;
  String price;
  int serviceProvider;
  int category;

  SubServiceDataModel({
    required this.serviceName,
    required this.price,
    required this.serviceProvider,
    required this.category,
  });

  factory SubServiceDataModel.fromJson(Map<String, dynamic> json) =>
      SubServiceDataModel(
        serviceName: json["service_name"],
        price: json["price"],
        serviceProvider: json["service_provider"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "service_name": serviceName,
        "price": price,
        "service_provider": serviceProvider,
        "category": category,
      };
}
