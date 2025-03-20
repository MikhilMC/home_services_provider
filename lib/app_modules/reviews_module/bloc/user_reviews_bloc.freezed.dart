// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_reviews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserReviewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() userReviewsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? userReviewsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? userReviewsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userReviewsFetched value) userReviewsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userReviewsFetched value)? userReviewsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userReviewsFetched value)? userReviewsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReviewsEventCopyWith<$Res> {
  factory $UserReviewsEventCopyWith(
          UserReviewsEvent value, $Res Function(UserReviewsEvent) then) =
      _$UserReviewsEventCopyWithImpl<$Res, UserReviewsEvent>;
}

/// @nodoc
class _$UserReviewsEventCopyWithImpl<$Res, $Val extends UserReviewsEvent>
    implements $UserReviewsEventCopyWith<$Res> {
  _$UserReviewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserReviewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserReviewsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserReviewsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() userReviewsFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? userReviewsFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? userReviewsFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userReviewsFetched value) userReviewsFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userReviewsFetched value)? userReviewsFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userReviewsFetched value)? userReviewsFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserReviewsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$userReviewsFetchedImplCopyWith<$Res> {
  factory _$$userReviewsFetchedImplCopyWith(_$userReviewsFetchedImpl value,
          $Res Function(_$userReviewsFetchedImpl) then) =
      __$$userReviewsFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userReviewsFetchedImplCopyWithImpl<$Res>
    extends _$UserReviewsEventCopyWithImpl<$Res, _$userReviewsFetchedImpl>
    implements _$$userReviewsFetchedImplCopyWith<$Res> {
  __$$userReviewsFetchedImplCopyWithImpl(_$userReviewsFetchedImpl _value,
      $Res Function(_$userReviewsFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$userReviewsFetchedImpl implements _userReviewsFetched {
  const _$userReviewsFetchedImpl();

  @override
  String toString() {
    return 'UserReviewsEvent.userReviewsFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$userReviewsFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() userReviewsFetched,
  }) {
    return userReviewsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? userReviewsFetched,
  }) {
    return userReviewsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? userReviewsFetched,
    required TResult orElse(),
  }) {
    if (userReviewsFetched != null) {
      return userReviewsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_userReviewsFetched value) userReviewsFetched,
  }) {
    return userReviewsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_userReviewsFetched value)? userReviewsFetched,
  }) {
    return userReviewsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_userReviewsFetched value)? userReviewsFetched,
    required TResult orElse(),
  }) {
    if (userReviewsFetched != null) {
      return userReviewsFetched(this);
    }
    return orElse();
  }
}

abstract class _userReviewsFetched implements UserReviewsEvent {
  const factory _userReviewsFetched() = _$userReviewsFetchedImpl;
}

/// @nodoc
mixin _$UserReviewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReviews) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReviews)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReviews)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserReviewsLoading value) loading,
    required TResult Function(UserReviewsSuccess value) success,
    required TResult Function(UserReviewsError value) error,
    required TResult Function(UserReviewsEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewsLoading value)? loading,
    TResult? Function(UserReviewsSuccess value)? success,
    TResult? Function(UserReviewsError value)? error,
    TResult? Function(UserReviewsEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewsLoading value)? loading,
    TResult Function(UserReviewsSuccess value)? success,
    TResult Function(UserReviewsError value)? error,
    TResult Function(UserReviewsEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReviewsStateCopyWith<$Res> {
  factory $UserReviewsStateCopyWith(
          UserReviewsState value, $Res Function(UserReviewsState) then) =
      _$UserReviewsStateCopyWithImpl<$Res, UserReviewsState>;
}

/// @nodoc
class _$UserReviewsStateCopyWithImpl<$Res, $Val extends UserReviewsState>
    implements $UserReviewsStateCopyWith<$Res> {
  _$UserReviewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserReviewsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserReviewsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReviews) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReviews)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReviews)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserReviewsLoading value) loading,
    required TResult Function(UserReviewsSuccess value) success,
    required TResult Function(UserReviewsError value) error,
    required TResult Function(UserReviewsEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewsLoading value)? loading,
    TResult? Function(UserReviewsSuccess value)? success,
    TResult? Function(UserReviewsError value)? error,
    TResult? Function(UserReviewsEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewsLoading value)? loading,
    TResult Function(UserReviewsSuccess value)? success,
    TResult Function(UserReviewsError value)? error,
    TResult Function(UserReviewsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserReviewsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserReviewsLoadingImplCopyWith<$Res> {
  factory _$$UserReviewsLoadingImplCopyWith(_$UserReviewsLoadingImpl value,
          $Res Function(_$UserReviewsLoadingImpl) then) =
      __$$UserReviewsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserReviewsLoadingImplCopyWithImpl<$Res>
    extends _$UserReviewsStateCopyWithImpl<$Res, _$UserReviewsLoadingImpl>
    implements _$$UserReviewsLoadingImplCopyWith<$Res> {
  __$$UserReviewsLoadingImplCopyWithImpl(_$UserReviewsLoadingImpl _value,
      $Res Function(_$UserReviewsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserReviewsLoadingImpl implements UserReviewsLoading {
  const _$UserReviewsLoadingImpl();

  @override
  String toString() {
    return 'UserReviewsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserReviewsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReviews) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReviews)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReviews)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserReviewsLoading value) loading,
    required TResult Function(UserReviewsSuccess value) success,
    required TResult Function(UserReviewsError value) error,
    required TResult Function(UserReviewsEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewsLoading value)? loading,
    TResult? Function(UserReviewsSuccess value)? success,
    TResult? Function(UserReviewsError value)? error,
    TResult? Function(UserReviewsEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewsLoading value)? loading,
    TResult Function(UserReviewsSuccess value)? success,
    TResult Function(UserReviewsError value)? error,
    TResult Function(UserReviewsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserReviewsLoading implements UserReviewsState {
  const factory UserReviewsLoading() = _$UserReviewsLoadingImpl;
}

/// @nodoc
abstract class _$$UserReviewsSuccessImplCopyWith<$Res> {
  factory _$$UserReviewsSuccessImplCopyWith(_$UserReviewsSuccessImpl value,
          $Res Function(_$UserReviewsSuccessImpl) then) =
      __$$UserReviewsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserReviewModel> userReviews});
}

/// @nodoc
class __$$UserReviewsSuccessImplCopyWithImpl<$Res>
    extends _$UserReviewsStateCopyWithImpl<$Res, _$UserReviewsSuccessImpl>
    implements _$$UserReviewsSuccessImplCopyWith<$Res> {
  __$$UserReviewsSuccessImplCopyWithImpl(_$UserReviewsSuccessImpl _value,
      $Res Function(_$UserReviewsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userReviews = null,
  }) {
    return _then(_$UserReviewsSuccessImpl(
      null == userReviews
          ? _value._userReviews
          : userReviews // ignore: cast_nullable_to_non_nullable
              as List<UserReviewModel>,
    ));
  }
}

/// @nodoc

class _$UserReviewsSuccessImpl implements UserReviewsSuccess {
  const _$UserReviewsSuccessImpl(final List<UserReviewModel> userReviews)
      : _userReviews = userReviews;

  final List<UserReviewModel> _userReviews;
  @override
  List<UserReviewModel> get userReviews {
    if (_userReviews is EqualUnmodifiableListView) return _userReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userReviews);
  }

  @override
  String toString() {
    return 'UserReviewsState.success(userReviews: $userReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserReviewsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._userReviews, _userReviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userReviews));

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserReviewsSuccessImplCopyWith<_$UserReviewsSuccessImpl> get copyWith =>
      __$$UserReviewsSuccessImplCopyWithImpl<_$UserReviewsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReviews) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(userReviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReviews)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(userReviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReviews)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userReviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserReviewsLoading value) loading,
    required TResult Function(UserReviewsSuccess value) success,
    required TResult Function(UserReviewsError value) error,
    required TResult Function(UserReviewsEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewsLoading value)? loading,
    TResult? Function(UserReviewsSuccess value)? success,
    TResult? Function(UserReviewsError value)? error,
    TResult? Function(UserReviewsEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewsLoading value)? loading,
    TResult Function(UserReviewsSuccess value)? success,
    TResult Function(UserReviewsError value)? error,
    TResult Function(UserReviewsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserReviewsSuccess implements UserReviewsState {
  const factory UserReviewsSuccess(final List<UserReviewModel> userReviews) =
      _$UserReviewsSuccessImpl;

  List<UserReviewModel> get userReviews;

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserReviewsSuccessImplCopyWith<_$UserReviewsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserReviewsErrorImplCopyWith<$Res> {
  factory _$$UserReviewsErrorImplCopyWith(_$UserReviewsErrorImpl value,
          $Res Function(_$UserReviewsErrorImpl) then) =
      __$$UserReviewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$UserReviewsErrorImplCopyWithImpl<$Res>
    extends _$UserReviewsStateCopyWithImpl<$Res, _$UserReviewsErrorImpl>
    implements _$$UserReviewsErrorImplCopyWith<$Res> {
  __$$UserReviewsErrorImplCopyWithImpl(_$UserReviewsErrorImpl _value,
      $Res Function(_$UserReviewsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$UserReviewsErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserReviewsErrorImpl implements UserReviewsError {
  const _$UserReviewsErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserReviewsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserReviewsErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserReviewsErrorImplCopyWith<_$UserReviewsErrorImpl> get copyWith =>
      __$$UserReviewsErrorImplCopyWithImpl<_$UserReviewsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReviews) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReviews)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReviews)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserReviewsLoading value) loading,
    required TResult Function(UserReviewsSuccess value) success,
    required TResult Function(UserReviewsError value) error,
    required TResult Function(UserReviewsEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewsLoading value)? loading,
    TResult? Function(UserReviewsSuccess value)? success,
    TResult? Function(UserReviewsError value)? error,
    TResult? Function(UserReviewsEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewsLoading value)? loading,
    TResult Function(UserReviewsSuccess value)? success,
    TResult Function(UserReviewsError value)? error,
    TResult Function(UserReviewsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserReviewsError implements UserReviewsState {
  const factory UserReviewsError(final String errorMessage) =
      _$UserReviewsErrorImpl;

  String get errorMessage;

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserReviewsErrorImplCopyWith<_$UserReviewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserReviewsEmptyImplCopyWith<$Res> {
  factory _$$UserReviewsEmptyImplCopyWith(_$UserReviewsEmptyImpl value,
          $Res Function(_$UserReviewsEmptyImpl) then) =
      __$$UserReviewsEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserReviewsEmptyImplCopyWithImpl<$Res>
    extends _$UserReviewsStateCopyWithImpl<$Res, _$UserReviewsEmptyImpl>
    implements _$$UserReviewsEmptyImplCopyWith<$Res> {
  __$$UserReviewsEmptyImplCopyWithImpl(_$UserReviewsEmptyImpl _value,
      $Res Function(_$UserReviewsEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserReviewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserReviewsEmptyImpl implements UserReviewsEmpty {
  const _$UserReviewsEmptyImpl();

  @override
  String toString() {
    return 'UserReviewsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserReviewsEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<UserReviewModel> userReviews) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<UserReviewModel> userReviews)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<UserReviewModel> userReviews)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserReviewsLoading value) loading,
    required TResult Function(UserReviewsSuccess value) success,
    required TResult Function(UserReviewsError value) error,
    required TResult Function(UserReviewsEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserReviewsLoading value)? loading,
    TResult? Function(UserReviewsSuccess value)? success,
    TResult? Function(UserReviewsError value)? error,
    TResult? Function(UserReviewsEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserReviewsLoading value)? loading,
    TResult Function(UserReviewsSuccess value)? success,
    TResult Function(UserReviewsError value)? error,
    TResult Function(UserReviewsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class UserReviewsEmpty implements UserReviewsState {
  const factory UserReviewsEmpty() = _$UserReviewsEmptyImpl;
}
