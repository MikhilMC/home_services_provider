// To parse this JSON data, do
//
//     final slot = slotFromJson(jsonString);

import 'dart:convert';

List<Slot> slotFromJson(String str) =>
    List<Slot>.from(json.decode(str).map((x) => Slot.fromJson(x)));

String slotToJson(List<Slot> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Slot {
  int id;
  String slotStart;
  String slotEnd;

  Slot({
    required this.id,
    required this.slotStart,
    required this.slotEnd,
  });

  factory Slot.fromJson(Map<String, dynamic> json) => Slot(
        id: json["id"],
        slotStart: json["slot_start"],
        slotEnd: json["slot_end"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "slot_start": slotStart,
        "slot_end": slotEnd,
      };
}
