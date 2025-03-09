// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:home_services_provider/app_modules/login_module/model/login_data_model/login_data_model.dart';

LoginResponseModel loginResponseModelFromJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) =>
    json.encode(data.toJson());

class LoginResponseModel {
  String status;
  String message;
  String userId;
  String username;
  String userstatus;
  LoginDataModel data;

  LoginResponseModel({
    required this.status,
    required this.message,
    required this.userId,
    required this.username,
    required this.userstatus,
    required this.data,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        status: json["status"],
        message: json["message"],
        userId: json["user_id"],
        username: json["username"],
        userstatus: json["userstatus"],
        data: LoginDataModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "user_id": userId,
        "username": username,
        "userstatus": userstatus,
        "data": data.toJson(),
      };
}
