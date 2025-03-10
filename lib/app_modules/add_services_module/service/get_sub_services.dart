import 'dart:convert';
import 'dart:io';

import 'package:home_services_provider/app_modules/add_services_module/model/sub_service/sub_service.dart';
import 'package:http/http.dart' as http;

import 'package:home_services_provider/app_constants/app_urls.dart';

Future<List<SubService>> getSubServices({
  required int categoryId,
}) async {
  try {
    Map<String, dynamic> params = {
      "category_id": categoryId.toString(),
    };
    // Construct the URL with query parameters
    final url = Uri.parse(AppUrls.getSubServicesUrl).replace(
      queryParameters: params,
    );

    final resp = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (resp.statusCode == 200) {
      final List<dynamic> decoded = jsonDecode(resp.body);
      final response =
          decoded.map((item) => SubService.fromJson(item)).toList();

      return response;
    } else {
      throw Exception('Failed to load response');
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
