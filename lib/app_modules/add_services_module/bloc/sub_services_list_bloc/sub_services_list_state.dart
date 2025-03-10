part of 'sub_services_list_bloc.dart';

@freezed
class SubServicesListState with _$SubServicesListState {
  const factory SubServicesListState.initial() = _Initial;
  const factory SubServicesListState.loading() = SubServicesListLoading;
  const factory SubServicesListState.success(
    List<SubService> subServices,
  ) = SubServicesListSuccess;
  const factory SubServicesListState.error(
    String errorMessage,
  ) = SubServicesListError;
  const factory SubServicesListState.empty() = SubServicesListEmpty;
}
