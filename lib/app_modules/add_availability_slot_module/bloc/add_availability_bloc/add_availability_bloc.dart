import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/model/add_availability_response_model.dart';
import 'package:home_services_provider/app_modules/add_availability_slot_module/service/add_availability.dart';

part 'add_availability_event.dart';
part 'add_availability_state.dart';
part 'add_availability_bloc.freezed.dart';

class AddAvailabilityBloc
    extends Bloc<AddAvailabilityEvent, AddAvailabilityState> {
  AddAvailabilityBloc() : super(_Initial()) {
    on<_addedAvailability>((event, emit) async {
      emit(AddAvailabilityState.loading());
      try {
        final response = await addAvailability(
          date: event.date,
          slotIds: event.slotIds,
        );
        emit(AddAvailabilityState.success(response));
      } catch (e) {
        emit(AddAvailabilityState.failure(e.toString()));
      }
    });
  }
}
