import 'dart:convert';
import 'dart:io';

import 'package:home_services_provider/app_constants/app_localstorage.dart';
import 'package:http/http.dart' as http;

import 'package:home_services_provider/app_constants/app_urls.dart';
import 'package:home_services_provider/app_modules/earnings_module/model/total_earnings_model.dart';

Future<TotalEarningsModel> getTotalEarnings() async {
  try {
    int providerId = await AppLocalstorage.getUserId();
    Map<String, dynamic> params = {
      "provider_id": providerId.toString(),
    };
    // Construct the URL with query parameters
    final url = Uri.parse(AppUrls.getTotalEarningsUrl).replace(
      queryParameters: params,
    );

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final Map<String, dynamic> decoded = jsonDecode(resp.body);
      final response = TotalEarningsModel.fromJson(decoded);
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
