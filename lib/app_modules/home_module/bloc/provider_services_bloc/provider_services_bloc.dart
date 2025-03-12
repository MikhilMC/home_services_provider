import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/home_module/model/service_model.dart';
import 'package:home_services_provider/app_modules/home_module/service/get_provider_services.dart';

part 'provider_services_event.dart';
part 'provider_services_state.dart';
part 'provider_services_bloc.freezed.dart';

class ProviderServicesBloc
    extends Bloc<ProviderServicesEvent, ProviderServicesState> {
  ProviderServicesBloc() : super(_Initial()) {
    on<_providerServicesFetched>((event, emit) async {
      emit(ProviderServicesState.loading());
      try {
        final providerServices = await getProviderServices();
        emit(ProviderServicesState.success(providerServices));
      } catch (e) {
        emit(ProviderServicesState.error(e.toString()));
      }
    });
  }
}
