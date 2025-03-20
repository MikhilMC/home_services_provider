import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:home_services_provider/app_constants/app_urls.dart';
import 'package:home_services_provider/app_modules/work_details_module/model/start_work_response_model.dart';

Future<StartWorkResponseModel> startWork({
  required int bookingId,
}) async {
  try {
    Map<String, dynamic> body = {
      "booking_id": bookingId,
    };

    final resp = await http.patch(
      Uri.parse(AppUrls.startWorkUrl),
      body: jsonEncode(body),
      headers: <String, String>{
        "Content-Type": "application/json; charset=utf-8"
      },
    );

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(resp.body);
      final StartWorkResponseModel response =
          StartWorkResponseModel.fromJson(decoded);

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
