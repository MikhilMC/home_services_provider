// To parse this JSON data, do
//
//     final addServiceResponseModel = addServiceResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:home_services_provider/app_modules/add_services_module/model/sub_service_data_model/sub_service_data_model.dart';

AddServicesResponseModel addServiceResponseModelFromJson(String str) =>
    AddServicesResponseModel.fromJson(json.decode(str));

String addServiceResponseModelToJson(AddServicesResponseModel data) =>
    json.encode(data.toJson());

class AddServicesResponseModel {
  String message;
  List<SubServiceDataModel> data;

  AddServicesResponseModel({
    required this.message,
    required this.data,
  });

  factory AddServicesResponseModel.fromJson(Map<String, dynamic> json) =>
      AddServicesResponseModel(
        message: json["message"],
        data: List<SubServiceDataModel>.from(
            json["data"].map((x) => SubServiceDataModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
