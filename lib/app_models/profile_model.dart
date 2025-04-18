// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  int? id;
  String? username;
  String? email;
  String? password;
  String? phone;
  String? image;
  String? idProof;
  String? latitude;
  String? longitude;

  ProfileModel({
    this.id,
    this.username,
    this.email,
    this.password,
    this.phone,
    this.image,
    this.idProof,
    this.latitude,
    this.longitude,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
        image: json["image"],
        idProof: json["id_proof"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "password": password,
        "phone": phone,
        "image": image,
        "id_proof": idProof,
        "latitude": latitude,
        "longitude": longitude,
      };
}
