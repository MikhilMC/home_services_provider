part of 'user_reviews_bloc.dart';

@freezed
class UserReviewsEvent with _$UserReviewsEvent {
  const factory UserReviewsEvent.started() = _Started;
  const factory UserReviewsEvent.userReviewsFetched() = _userReviewsFetched;
}
