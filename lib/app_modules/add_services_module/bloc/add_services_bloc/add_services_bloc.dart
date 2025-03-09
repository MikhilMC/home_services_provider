import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/add_services_module/class/add_services_details.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/add_services_response_model/add_services_response_model.dart';
import 'package:home_services_provider/app_modules/add_services_module/service/add_services.dart';

part 'add_services_event.dart';
part 'add_services_state.dart';
part 'add_services_bloc.freezed.dart';

class AddServicesBloc extends Bloc<AddServicesEvent, AddServicesState> {
  AddServicesBloc() : super(_Initial()) {
    on<_servicesAdded>((event, emit) async {
      emit(AddServicesState.loading());
      try {
        final response = await addServices(
          addServicesDetails: event.addServicesDetails,
        );

        emit(AddServicesState.success(response));
      } catch (e) {
        emit(AddServicesState.failure(e.toString()));
      }
    });
  }
}
