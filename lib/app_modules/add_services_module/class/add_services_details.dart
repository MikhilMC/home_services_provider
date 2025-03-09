// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:home_services_provider/app_modules/add_services_module/model/sub_service_model.dart';

class AddServicesDetails {
  final int serviceProviderId;
  final List<SubServiceModel> servicesOffered;
  AddServicesDetails({
    required this.serviceProviderId,
    required this.servicesOffered,
  });
}
