part of 'user_reviews_bloc.dart';

@freezed
class UserReviewsState with _$UserReviewsState {
  const factory UserReviewsState.initial() = _Initial;
  const factory UserReviewsState.loading() = UserReviewsLoading;
  const factory UserReviewsState.success(
    List<UserReviewModel> userReviews,
  ) = UserReviewsSuccess;
  const factory UserReviewsState.error(
    String errorMessage,
  ) = UserReviewsError;
  const factory UserReviewsState.empty() = UserReviewsEmpty;
}
