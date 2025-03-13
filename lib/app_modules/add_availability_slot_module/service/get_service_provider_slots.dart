import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:home_services_provider/app_constants/app_urls.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/model/service_provider_slots_model.dart';

Future<ServiceProviderSlotsModel> getServiceProviderSlots() async {
  try {
    int providerId = 1;
    Map<String, dynamic> params = {
      "id": providerId.toString(),
    };
    // Construct the URL with query parameters
    final url = Uri.parse(AppUrls.getServiceProviderSlotsUrl).replace(
      queryParameters: params,
    );

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    final Map<String, dynamic> decoded = jsonDecode(resp.body);
    if (resp.statusCode == 200) {
      final response = ServiceProviderSlotsModel.fromJson(decoded);
      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(resp.body);
      throw Exception(
        '${errorResponse['message'] ?? 'Unknown error'}',
      );
    }
  } on SocketException {
    throw Exception('Server error');
  } on HttpException {
    throw Exception('Something went wrong');
  } on FormatException {
    throw Exception('Bad request');
  } catch (e) {
    throw Exception(e.toString());
  }
}
