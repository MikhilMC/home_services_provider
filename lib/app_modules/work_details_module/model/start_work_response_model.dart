// To parse this JSON data, do
//
//     final startWorkResponseModel = startWorkResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:home_services_provider/app_modules/work_details_module/model/work_model.dart';

StartWorkResponseModel startWorkResponseModelFromJson(String str) =>
    StartWorkResponseModel.fromJson(json.decode(str));

String startWorkResponseModelToJson(StartWorkResponseModel data) =>
    json.encode(data.toJson());

class StartWorkResponseModel {
  String status;
  String message;
  WorkModel data;

  StartWorkResponseModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory StartWorkResponseModel.fromJson(Map<String, dynamic> json) =>
      StartWorkResponseModel(
        status: json["status"],
        message: json["message"],
        data: WorkModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}
