// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class EditProfileDetails {
  final String? username;
  final String? email;
  final String? phone;
  final double? latitude;
  final double? longitude;
  final String? password;
  final File? image;
  final File? idProof;
  EditProfileDetails({
    this.username,
    this.email,
    this.phone,
    this.latitude,
    this.longitude,
    this.password,
    this.image,
    this.idProof,
  });
}
