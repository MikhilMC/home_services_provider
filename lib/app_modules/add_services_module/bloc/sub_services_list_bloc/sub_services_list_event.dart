part of 'sub_services_list_bloc.dart';

@freezed
class SubServicesListEvent with _$SubServicesListEvent {
  const factory SubServicesListEvent.started() = _Started;
  const factory SubServicesListEvent.subServicesFetched(int categoryId,) = _subServicesFetched;
  
}