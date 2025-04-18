import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:home_services_provider/app_constants/app_urls.dart';
import 'package:home_services_provider/app_modules/register_module/class/edit_profile_details.dart';
import 'package:home_services_provider/app_modules/register_module/model/edit_profile_response_model/edit_profile_response_model.dart';
import 'package:home_services_provider/app_utils/app_localstorage.dart';

Future<EditProfileResponseModel> editProfile({
  required EditProfileDetails serviceProviderDetails,
}) async {
  try {
    if (serviceProviderDetails.username == null &&
        serviceProviderDetails.email == null &&
        serviceProviderDetails.phone == null &&
        serviceProviderDetails.image == null &&
        serviceProviderDetails.idProof == null &&
        serviceProviderDetails.latitude == null &&
        serviceProviderDetails.longitude == null &&
        serviceProviderDetails.password == null) {
      throw Exception('There are nothing to update');
    }
    var request = http.MultipartRequest(
      "PATCH",
      Uri.parse(AppUrls.editProfileUrl),
    );

    final int userId = await AppLocalstorage.getUserId();
    request.fields['id'] = userId.toString();

    if (serviceProviderDetails.username != null) {
      request.fields['username'] = serviceProviderDetails.username!;
    }

    if (serviceProviderDetails.email != null) {
      request.fields['email'] = serviceProviderDetails.email!;
    }

    if (serviceProviderDetails.password != null) {
      request.fields['password'] = serviceProviderDetails.password!;
    }

    if (serviceProviderDetails.phone != null) {
      request.fields['phone'] = serviceProviderDetails.phone!;
    }

    if (serviceProviderDetails.latitude != null) {
      request.fields['latitude'] = serviceProviderDetails.latitude!.toString();
    }

    if (serviceProviderDetails.longitude != null) {
      request.fields['longitude'] =
          serviceProviderDetails.longitude!.toString();
    }

    if (serviceProviderDetails.image != null) {
      request.files.add(
        await http.MultipartFile.fromPath(
          'image',
          serviceProviderDetails.image!.path,
        ),
      );
      // var imageStream =
      //     http.ByteStream(serviceProviderDetails.image!.openRead());
      // var imageLength = await serviceProviderDetails.image!.length();
      // var multipartFile = http.MultipartFile(
      //   'image',
      //   imageStream,
      //   imageLength,
      //   filename: serviceProviderDetails.image!.path.split("/").last,
      // );
      // request.files.add(multipartFile);
    }

    if (serviceProviderDetails.idProof != null) {
      request.files.add(
        await http.MultipartFile.fromPath(
          'id_proof',
          serviceProviderDetails.idProof!.path,
        ),
      );
      // var idProofStream =
      //     http.ByteStream(serviceProviderDetails.idProof!.openRead());
      // var idProofLength = await serviceProviderDetails.idProof!.length();
      // var idProofMultipartFile = http.MultipartFile(
      //   'id_proof',
      //   idProofStream,
      //   idProofLength,
      //   filename: serviceProviderDetails.idProof!.path.split("/").last,
      // );
      // request.files.add(idProofMultipartFile);
    }

    // Send request
    final resp = await request.send();

    // Convert the response stream to a string
    final responseBody = await resp.stream.bytesToString();

    if (resp.statusCode == 200) {
      final dynamic decoded = jsonDecode(responseBody);
      final EditProfileResponseModel response =
          EditProfileResponseModel.fromJson(decoded);
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
