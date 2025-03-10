import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/sub_service/sub_service.dart';
import 'package:home_services_provider/app_modules/add_services_module/service/get_sub_services.dart';

part 'sub_services_list_event.dart';
part 'sub_services_list_state.dart';
part 'sub_services_list_bloc.freezed.dart';

class SubServicesListBloc
    extends Bloc<SubServicesListEvent, SubServicesListState> {
  SubServicesListBloc() : super(_Initial()) {
    on<_subServicesFetched>((event, emit) async {
      emit(SubServicesListState.loading());
      try {
        final subServices = await getSubServices(
          categoryId: event.categoryId,
        );
        if (subServices.isNotEmpty) {
          emit(SubServicesListState.success(subServices));
        } else {
          emit(SubServicesListState.empty());
        }
      } catch (e) {
        emit(SubServicesListState.error(e.toString()));
      }
    });
  }
}
