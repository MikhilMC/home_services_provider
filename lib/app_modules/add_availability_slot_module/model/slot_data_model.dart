// To parse this JSON data, do
//
//     final slotDataModel = slotDataModelFromJson(jsonString);

import 'dart:convert';

List<SlotDataModel> slotDataModelFromJson(String str) =>
    List<SlotDataModel>.from(
        json.decode(str).map((x) => SlotDataModel.fromJson(x)));

String slotDataModelToJson(List<SlotDataModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SlotDataModel {
  int serviceProvider;
  DateTime date;
  int slot;
  bool isBooked;
  bool isAvailable;

  SlotDataModel({
    required this.serviceProvider,
    required this.date,
    required this.slot,
    required this.isBooked,
    required this.isAvailable,
  });

  factory SlotDataModel.fromJson(Map<String, dynamic> json) => SlotDataModel(
        serviceProvider: json["service_provider"],
        date: DateTime.parse(json["date"]),
        slot: json["slot"],
        isBooked: json["is_booked"],
        isAvailable: json["is_available"],
      );

  Map<String, dynamic> toJson() => {
        "service_provider": serviceProvider,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "slot": slot,
        "is_booked": isBooked,
        "is_available": isAvailable,
      };
}
