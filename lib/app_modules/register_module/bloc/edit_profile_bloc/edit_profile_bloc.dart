import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/register_module/class/edit_profile_details.dart';
import 'package:home_services_provider/app_modules/register_module/model/edit_profile_response_model/edit_profile_response_model.dart';
import 'package:home_services_provider/app_modules/register_module/service/edit_profile.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc() : super(const _Initial()) {
    on<_profileEdited>((event, emit) async {
      emit(const EditProfileState.loading());
      try {
        final response = await editProfile(
          serviceProviderDetails: event.updatedProfileDetails,
        );
        emit(EditProfileState.success(response));
      } catch (e) {
        emit(EditProfileState.error(e.toString()));
      }
    });
  }
}
