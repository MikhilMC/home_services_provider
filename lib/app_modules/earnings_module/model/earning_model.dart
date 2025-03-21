// To parse this JSON data, do
//
//     final earningModel = earningModelFromJson(jsonString);

import 'dart:convert';

List<EarningModel> earningModelFromJson(String str) => List<EarningModel>.from(
    json.decode(str).map((x) => EarningModel.fromJson(x)));

String earningModelToJson(List<EarningModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EarningModel {
  DateTime bookingDateCasted;
  double totalAmount;

  EarningModel({
    required this.bookingDateCasted,
    required this.totalAmount,
  });

  factory EarningModel.fromJson(Map<String, dynamic> json) => EarningModel(
        bookingDateCasted: DateTime.parse(json["booking_date_casted"]),
        totalAmount: json["total_amount"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "booking_date_casted":
            "${bookingDateCasted.year.toString().padLeft(4, '0')}-${bookingDateCasted.month.toString().padLeft(2, '0')}-${bookingDateCasted.day.toString().padLeft(2, '0')}",
        "total_amount": totalAmount,
      };
}
