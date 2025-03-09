// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:home_services_provider/app_modules/add_services_module/model/category_model/category_model.dart';

class SubServiceModel {
  final CategoryModel category;
  final String serviceName;
  final double ratePerSlot;
  SubServiceModel({
    required this.category,
    required this.serviceName,
    required this.ratePerSlot,
  });
}
