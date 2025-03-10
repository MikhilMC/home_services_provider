// To parse this JSON data, do
//
//     final subService = subServiceFromJson(jsonString);

import 'dart:convert';

List<SubService> subServiceFromJson(String str) =>
    List<SubService>.from(json.decode(str).map((x) => SubService.fromJson(x)));

String subServiceToJson(List<SubService> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SubService {
  int id;
  int category;
  String serviceName;

  SubService({
    required this.id,
    required this.category,
    required this.serviceName,
  });

  // Add a default/empty category
  static SubService get empty => SubService(
        id: 0,
        category: 0,
        serviceName: '',
      );

  // Add a method to check if the category is empty
  bool get isEmpty => id == 0; // Adjust this logic based on your requirements

  factory SubService.fromJson(Map<String, dynamic> json) => SubService(
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
