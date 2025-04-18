// To parse this JSON data, do
//
//     final updatedProfile = updatedProfileFromJson(jsonString);

import 'dart:convert';

UpdatedProfile updatedProfileFromJson(String str) =>
    UpdatedProfile.fromJson(json.decode(str));

String updatedProfileToJson(UpdatedProfile data) => json.encode(data.toJson());

class UpdatedProfile {
  int id;
  String username;
  String email;
  String password;
  String phone;
  String idProof;
  String latitude;
  String longitude;
  String image;

  UpdatedProfile({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.phone,
    required this.idProof,
    required this.latitude,
    required this.longitude,
    required this.image,
  });

  factory UpdatedProfile.fromJson(Map<String, dynamic> json) => UpdatedProfile(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
        idProof: json["id_proof"],
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
        "id_proof": idProof,
        "latitude": latitude,
        "longitude": longitude,
        "image": image,
      };
}
