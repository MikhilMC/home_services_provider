import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/register_module/class/service_provider_details.dart';
import 'package:home_services_provider/app_modules/register_module/model/register_response_model/register_response_model.dart';
import 'package:home_services_provider/app_modules/register_module/service/register_service_provider.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(_Initial()) {
    on<_serviceProviderRegistered>((event, emit) async {
      emit(RegistrationState.loading());
      try {
        final response = await registerServiceProvider(
          serviceProviderDetails: event.serviceProviderDetails,
        );

        emit(RegistrationState.success(response));
      } catch (e) {
        emit(RegistrationState.failure(e.toString()));
      }
    });
  }
}
