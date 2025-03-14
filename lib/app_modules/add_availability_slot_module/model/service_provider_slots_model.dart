// To parse this JSON data, do
//
//     final serviceProviderSlotsModel = serviceProviderSlotsModelFromJson(jsonString);

import 'dart:convert';

import 'package:home_services_provider/app_modules/add_availability_slot_module/model/slot.dart';

ServiceProviderSlotsModel serviceProviderSlotsModelFromJson(String str) =>
    ServiceProviderSlotsModel.fromJson(json.decode(str));

String serviceProviderSlotsModelToJson(ServiceProviderSlotsModel data) =>
    json.encode(data.toJson());

class ServiceProviderSlotsModel {
  List<Slot> slots;

  ServiceProviderSlotsModel({
    required this.slots,
  });

  factory ServiceProviderSlotsModel.fromJson(Map<String, dynamic> json) =>
      ServiceProviderSlotsModel(
        slots: List<Slot>.from(json["slots"].map((x) => Slot.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "slots": List<dynamic>.from(slots.map((x) => x.toJson())),
      };
}
