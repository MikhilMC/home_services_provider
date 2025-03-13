import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:home_services_provider/app_constants/app_urls.dart';
import 'package:http/http.dart' as http;

import 'package:home_services_provider/app_modules/add_services_module/class/add_services_details.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/add_services_response_model/add_services_response_model.dart';

Future<AddServicesResponseModel> addServices({
  required AddServicesDetails addServicesDetails,
}) async {
  try {
    if (kDebugMode) {
      print("service function");
    }
    Map<String, dynamic> body = {
      "category": addServicesDetails.categoryId.toString(),
      "service_provider": addServicesDetails.serviceProviderId.toString(),
      "services": addServicesDetails.servicesOffered.map((service) {
        return {
          "service": service.service.id.toString(),
          "price": service.ratePerSlot.toString(),
        };
      }).toList()
    };

    final resp = await http.post(
      Uri.parse(AppUrls.addServicesUrl),
      body: jsonEncode(body),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );
    if (kDebugMode) {
      print("after response");
    }

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(resp.body);
      final AddServicesResponseModel response =
          AddServicesResponseModel.fromJson(decoded);
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
