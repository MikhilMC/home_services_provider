// To parse this JSON data, do
//
//     final addAvailabilityResponseModel = addAvailabilityResponseModelFromJson(jsonString);

import 'dart:convert';

import 'package:home_services_provider/app_modules/add_availability_slot_module/model/slot_data_model.dart';

AddAvailabilityResponseModel addAvailabilityResponseModelFromJson(String str) =>
    AddAvailabilityResponseModel.fromJson(json.decode(str));

String addAvailabilityResponseModelToJson(AddAvailabilityResponseModel data) =>
    json.encode(data.toJson());

class AddAvailabilityResponseModel {
  String message;
  List<SlotDataModel> slots;

  AddAvailabilityResponseModel({
    required this.message,
    required this.slots,
  });

  factory AddAvailabilityResponseModel.fromJson(Map<String, dynamic> json) =>
      AddAvailabilityResponseModel(
        message: json["message"],
        slots: List<SlotDataModel>.from(
            json["slots"].map((x) => SlotDataModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "slots": List<dynamic>.from(slots.map((x) => x.toJson())),
      };
}
