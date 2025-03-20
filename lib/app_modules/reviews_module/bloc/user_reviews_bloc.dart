import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/reviews_module/model/user_review_model.dart';
import 'package:home_services_provider/app_modules/reviews_module/service/get_user_reviews.dart';

part 'user_reviews_event.dart';
part 'user_reviews_state.dart';
part 'user_reviews_bloc.freezed.dart';

class UserReviewsBloc extends Bloc<UserReviewsEvent, UserReviewsState> {
  UserReviewsBloc() : super(_Initial()) {
    on<_userReviewsFetched>((event, emit) async {
      emit(UserReviewsState.loading());
      try {
        final userReviews = await getUserReviews();
        if (userReviews.isNotEmpty) {
          emit(UserReviewsState.success(userReviews));
        } else {
          emit(UserReviewsState.empty());
        }
      } catch (e) {
        emit(UserReviewsState.error(e.toString()));
      }
    });
  }
}
