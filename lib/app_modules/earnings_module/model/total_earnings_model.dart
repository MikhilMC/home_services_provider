// To parse this JSON data, do
//
//     final totalEarningsModel = totalEarningsModelFromJson(jsonString);

import 'dart:convert';

TotalEarningsModel totalEarningsModelFromJson(String str) =>
    TotalEarningsModel.fromJson(json.decode(str));

String totalEarningsModelToJson(TotalEarningsModel data) =>
    json.encode(data.toJson());

class TotalEarningsModel {
  String status;
  String serviceProvider;
  double totalEarnings;

  TotalEarningsModel({
    required this.status,
    required this.serviceProvider,
    required this.totalEarnings,
  });

  factory TotalEarningsModel.fromJson(Map<String, dynamic> json) =>
      TotalEarningsModel(
        status: json["status"],
        serviceProvider: json["service_provider"],
        totalEarnings: json["total_earnings"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "service_provider": serviceProvider,
        "total_earnings": totalEarnings,
      };
}
