// To parse this JSON data, do
//
//     final serviceProviderDataModel = serviceProviderDataModelFromJson(jsonString);

import 'dart:convert';

ServiceProviderDataModel serviceProviderDataModelFromJson(String str) =>
    ServiceProviderDataModel.fromJson(json.decode(str));

String serviceProviderDataModelToJson(ServiceProviderDataModel data) =>
    json.encode(data.toJson());

class ServiceProviderDataModel {
  int id;
  String username;
  String email;
  String password;
  String phone;
  String latitude;
  String longitude;
  String image;

  ServiceProviderDataModel({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.phone,
    required this.latitude,
    required this.longitude,
    required this.image,
  });

  factory ServiceProviderDataModel.fromJson(Map<String, dynamic> json) =>
      ServiceProviderDataModel(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "password": password,
        "phone": phone,
        "latitude": latitude,
        "longitude": longitude,
        "image": image,
      };
}
