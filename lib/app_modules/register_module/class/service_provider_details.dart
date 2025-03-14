// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class ServiceProviderDetails {
  final String username;
  final String email;
  final String phone;
  final double latitude;
  final double longitude;
  final String password;
  final File image;
  ServiceProviderDetails({
    required this.username,
    required this.email,
    required this.phone,
    required this.latitude,
    required this.longitude,
    required this.password,
    required this.image,
  });
}
