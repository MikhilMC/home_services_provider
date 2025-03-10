// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:home_services_provider/app_modules/add_services_module/model/category_model/category_model.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/sub_service/sub_service.dart';

class SubServiceModel {
  final CategoryModel category;
  final SubService service;
  final double ratePerSlot;
  SubServiceModel({
    required this.category,
    required this.service,
    required this.ratePerSlot,
  });
}
