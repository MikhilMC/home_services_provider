import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/model/service_provider_slots_model.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/service/get_service_provider_slots.dart';

part 'slots_event.dart';
part 'slots_state.dart';
part 'slots_bloc.freezed.dart';

class SlotsBloc extends Bloc<SlotsEvent, SlotsState> {
  SlotsBloc() : super(_Initial()) {
    on<_serviceProviderSlotsFetched>((event, emit) async {
      emit(SlotsState.loading());
      try {
        final slots = await getServiceProviderSlots();
        emit(SlotsState.success(slots));
      } catch (e) {
        emit(SlotsState.error(e.toString()));
      }
    });
  }
}
