// To parse this JSON data, do
//
//     final addServicesResponseModel = addServicesResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:home_services_provider/app_modules/add_services_module/model/sub_service_data_model/sub_service_data_model.dart';

AddServicesResponseModel addServicesResponseModelFromJson(String str) =>
    AddServicesResponseModel.fromJson(json.decode(str));

String addServicesResponseModelToJson(AddServicesResponseModel data) =>
    json.encode(data.toJson());

class AddServicesResponseModel {
  int category;
  int serviceProvider;
  List<SubServiceDataModel> services;

  AddServicesResponseModel({
    required this.category,
    required this.serviceProvider,
    required this.services,
  });

  factory AddServicesResponseModel.fromJson(Map<String, dynamic> json) =>
      AddServicesResponseModel(
        category: json["category"],
        serviceProvider: json["service_provider"],
        services: List<SubServiceDataModel>.from(
            json["services"].map((x) => SubServiceDataModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "service_provider": serviceProvider,
        "services": List<dynamic>.from(services.map((x) => x.toJson())),
      };
}
