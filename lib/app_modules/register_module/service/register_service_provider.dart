import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:home_services_provider/app_constants/app_urls.dart';
import 'package:home_services_provider/app_modules/register_module/class/service_provider_details.dart';
import 'package:home_services_provider/app_modules/register_module/model/register_response_model/register_response_model.dart';

Future<RegisterResponseModel> registerServiceProvider({
  required ServiceProviderDetails serviceProviderDetails,
}) async {
  try {
    var request = http.MultipartRequest(
      "POST",
      Uri.parse(AppUrls.serviceProviderRegistrationUrl),
    );

    request.fields['username'] = serviceProviderDetails.username;
    request.fields['email'] = serviceProviderDetails.email;
    request.fields['password'] = serviceProviderDetails.password;
    request.fields['phone'] = serviceProviderDetails.phone;
    request.fields['latitude'] = serviceProviderDetails.latitude.toString();
    request.fields['longitude'] = serviceProviderDetails.longitude.toString();

    var imageStream = http.ByteStream(serviceProviderDetails.image.openRead());
    var imageLength = await serviceProviderDetails.image.length();
    var multipartFile = http.MultipartFile(
      'image',
      imageStream,
      imageLength,
      filename: serviceProviderDetails.image.path.split("/").last,
    );
    request.files.add(multipartFile);

    // Send request
    final resp = await request.send();

    // Convert the response stream to a string
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 201) {
      final dynamic decoded = jsonDecode(responseBody);
      final RegisterResponseModel response =
          RegisterResponseModel.fromJson(decoded);
      return response;
    } else {
      final Map<String, dynamic> errorResponse = jsonDecode(responseBody);
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
