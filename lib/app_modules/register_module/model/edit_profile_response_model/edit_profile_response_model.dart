// To parse this JSON data, do
//
//     final editProfileResponseModel = editProfileResponseModelFromJson(jsonString);

import 'package:home_services_provider/app_modules/register_module/model/updated_profile/updated_profile.dart';
import 'dart:convert';

EditProfileResponseModel editProfileResponseModelFromJson(String str) =>
    EditProfileResponseModel.fromJson(json.decode(str));

String editProfileResponseModelToJson(EditProfileResponseModel data) =>
    json.encode(data.toJson());

class EditProfileResponseModel {
  String detail;
  UpdatedProfile service;

  EditProfileResponseModel({
    required this.detail,
    required this.service,
  });

  factory EditProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      EditProfileResponseModel(
        detail: json["detail"],
        service: UpdatedProfile.fromJson(json["service"]),
      );

  Map<String, dynamic> toJson() => {
        "detail": detail,
        "service": service.toJson(),
      };
}
