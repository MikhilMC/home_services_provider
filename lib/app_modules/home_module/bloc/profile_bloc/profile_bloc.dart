import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/home_module/model/profile_model.dart';
import 'package:home_services_provider/app_modules/home_module/service/get_profile_data.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(_Initial()) {
    on<_profileDetailsFetched>((event, emit) async {
      emit(ProfileState.loading());
      try {
        final profileDetails = await getProfileData();
        emit(ProfileState.success(profileDetails));
      } catch (e) {
        emit(ProfileState.error(e.toString()));
      }
    });
  }
}
