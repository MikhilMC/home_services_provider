// To parse this JSON data, do
//
//     final serviceProviderSlotsModel = serviceProviderSlotsModelFromJson(jsonString);

import 'dart:convert';

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

class Slot {
  int id;
  String slotStart;
  String slotEnd;
  bool isBooked;

  Slot({
    required this.id,
    required this.slotStart,
    required this.slotEnd,
    required this.isBooked,
  });

  factory Slot.fromJson(Map<String, dynamic> json) => Slot(
        id: json["id"],
        slotStart: json["slot_start"],
        slotEnd: json["slot_end"],
        isBooked: json["is_booked"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slot_start": slotStart,
        "slot_end": slotEnd,
        "is_booked": isBooked,
      };
}
