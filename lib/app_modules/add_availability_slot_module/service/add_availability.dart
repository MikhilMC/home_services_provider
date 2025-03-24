import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:home_services_provider/app_utils/app_localstorage.dart';
import 'package:http/http.dart' as http;

import 'package:home_services_provider/app_constants/app_urls.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/model/add_availability_response_model.dart';

Future<AddAvailabilityResponseModel> addAvailability({
  required DateTime date,
  required List<int> slotIds,
}) async {
  try {
    int serviceProviderId = await AppLocalstorage.getUserId();
    Map<String, dynamic> body = {
      "service_provider_id": serviceProviderId.toString(),
      "date":
          "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
      "slots": slotIds.map((slotId) => slotId.toString()).toList()
    };

    final resp = await http.post(
      Uri.parse(AppUrls.addAvailabilitySlotsUrl),
      body: jsonEncode(body),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(resp.body);
      final AddAvailabilityResponseModel response =
          AddAvailabilityResponseModel.fromJson(decoded);
      if (kDebugMode) {
        print("response: $response");
      }
      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
      throw Exception(
        errorResponse['message'] ?? 'Unknown error',
      );
    }
  } on SocketException {
    throw Exception('No Internet connection');
  } on HttpException {
    throw Exception('Server error');
  } on FormatException {
    throw Exception('Bad response format');
  } catch (e) {
    throw Exception('Unexpected error: ${e.toString()}');
  }
}
