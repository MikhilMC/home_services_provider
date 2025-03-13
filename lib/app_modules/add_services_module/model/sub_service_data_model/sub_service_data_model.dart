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
  int service;
  double price;

  SubServiceDataModel({
    required this.service,
    required this.price,
  });

  factory SubServiceDataModel.fromJson(Map<String, dynamic> json) =>
      SubServiceDataModel(
        service: json["service"],
        price: json["price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "service": service,
        "price": price,
      };
}
