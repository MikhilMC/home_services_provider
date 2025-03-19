// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booked_services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookedServicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() bookedServicesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? bookedServicesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? bookedServicesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_bookedServicesFetched value)
        bookedServicesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_bookedServicesFetched value)? bookedServicesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_bookedServicesFetched value)? bookedServicesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedServicesEventCopyWith<$Res> {
  factory $BookedServicesEventCopyWith(
          BookedServicesEvent value, $Res Function(BookedServicesEvent) then) =
      _$BookedServicesEventCopyWithImpl<$Res, BookedServicesEvent>;
}

/// @nodoc
class _$BookedServicesEventCopyWithImpl<$Res, $Val extends BookedServicesEvent>
    implements $BookedServicesEventCopyWith<$Res> {
  _$BookedServicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookedServicesEvent
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
    extends _$BookedServicesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookedServicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BookedServicesEvent.started()';
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
    required TResult Function() bookedServicesFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? bookedServicesFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? bookedServicesFetched,
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
    required TResult Function(_bookedServicesFetched value)
        bookedServicesFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_bookedServicesFetched value)? bookedServicesFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_bookedServicesFetched value)? bookedServicesFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BookedServicesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$bookedServicesFetchedImplCopyWith<$Res> {
  factory _$$bookedServicesFetchedImplCopyWith(
          _$bookedServicesFetchedImpl value,
          $Res Function(_$bookedServicesFetchedImpl) then) =
      __$$bookedServicesFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$bookedServicesFetchedImplCopyWithImpl<$Res>
    extends _$BookedServicesEventCopyWithImpl<$Res, _$bookedServicesFetchedImpl>
    implements _$$bookedServicesFetchedImplCopyWith<$Res> {
  __$$bookedServicesFetchedImplCopyWithImpl(_$bookedServicesFetchedImpl _value,
      $Res Function(_$bookedServicesFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookedServicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$bookedServicesFetchedImpl implements _bookedServicesFetched {
  const _$bookedServicesFetchedImpl();

  @override
  String toString() {
    return 'BookedServicesEvent.bookedServicesFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$bookedServicesFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() bookedServicesFetched,
  }) {
    return bookedServicesFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? bookedServicesFetched,
  }) {
    return bookedServicesFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? bookedServicesFetched,
    required TResult orElse(),
  }) {
    if (bookedServicesFetched != null) {
      return bookedServicesFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_bookedServicesFetched value)
        bookedServicesFetched,
  }) {
    return bookedServicesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_bookedServicesFetched value)? bookedServicesFetched,
  }) {
    return bookedServicesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_bookedServicesFetched value)? bookedServicesFetched,
    required TResult orElse(),
  }) {
    if (bookedServicesFetched != null) {
      return bookedServicesFetched(this);
    }
    return orElse();
  }
}

abstract class _bookedServicesFetched implements BookedServicesEvent {
  const factory _bookedServicesFetched() = _$bookedServicesFetchedImpl;
}

/// @nodoc
mixin _$BookedServicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServicesBookingModel bookedServices) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ServicesBookingModel bookedServices)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServicesBookingModel bookedServices)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BookedServicesLoading value) loading,
    required TResult Function(BookedServicesSuccess value) success,
    required TResult Function(BookedServicesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookedServicesLoading value)? loading,
    TResult? Function(BookedServicesSuccess value)? success,
    TResult? Function(BookedServicesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookedServicesLoading value)? loading,
    TResult Function(BookedServicesSuccess value)? success,
    TResult Function(BookedServicesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookedServicesStateCopyWith<$Res> {
  factory $BookedServicesStateCopyWith(
          BookedServicesState value, $Res Function(BookedServicesState) then) =
      _$BookedServicesStateCopyWithImpl<$Res, BookedServicesState>;
}

/// @nodoc
class _$BookedServicesStateCopyWithImpl<$Res, $Val extends BookedServicesState>
    implements $BookedServicesStateCopyWith<$Res> {
  _$BookedServicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookedServicesState
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
    extends _$BookedServicesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookedServicesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BookedServicesState.initial()';
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
    required TResult Function(ServicesBookingModel bookedServices) success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ServicesBookingModel bookedServices)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServicesBookingModel bookedServices)? success,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(BookedServicesLoading value) loading,
    required TResult Function(BookedServicesSuccess value) success,
    required TResult Function(BookedServicesError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookedServicesLoading value)? loading,
    TResult? Function(BookedServicesSuccess value)? success,
    TResult? Function(BookedServicesError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookedServicesLoading value)? loading,
    TResult Function(BookedServicesSuccess value)? success,
    TResult Function(BookedServicesError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookedServicesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$BookedServicesLoadingImplCopyWith<$Res> {
  factory _$$BookedServicesLoadingImplCopyWith(
          _$BookedServicesLoadingImpl value,
          $Res Function(_$BookedServicesLoadingImpl) then) =
      __$$BookedServicesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookedServicesLoadingImplCopyWithImpl<$Res>
    extends _$BookedServicesStateCopyWithImpl<$Res, _$BookedServicesLoadingImpl>
    implements _$$BookedServicesLoadingImplCopyWith<$Res> {
  __$$BookedServicesLoadingImplCopyWithImpl(_$BookedServicesLoadingImpl _value,
      $Res Function(_$BookedServicesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookedServicesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BookedServicesLoadingImpl implements BookedServicesLoading {
  const _$BookedServicesLoadingImpl();

  @override
  String toString() {
    return 'BookedServicesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedServicesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServicesBookingModel bookedServices) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ServicesBookingModel bookedServices)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServicesBookingModel bookedServices)? success,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(BookedServicesLoading value) loading,
    required TResult Function(BookedServicesSuccess value) success,
    required TResult Function(BookedServicesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookedServicesLoading value)? loading,
    TResult? Function(BookedServicesSuccess value)? success,
    TResult? Function(BookedServicesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookedServicesLoading value)? loading,
    TResult Function(BookedServicesSuccess value)? success,
    TResult Function(BookedServicesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BookedServicesLoading implements BookedServicesState {
  const factory BookedServicesLoading() = _$BookedServicesLoadingImpl;
}

/// @nodoc
abstract class _$$BookedServicesSuccessImplCopyWith<$Res> {
  factory _$$BookedServicesSuccessImplCopyWith(
          _$BookedServicesSuccessImpl value,
          $Res Function(_$BookedServicesSuccessImpl) then) =
      __$$BookedServicesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ServicesBookingModel bookedServices});
}

/// @nodoc
class __$$BookedServicesSuccessImplCopyWithImpl<$Res>
    extends _$BookedServicesStateCopyWithImpl<$Res, _$BookedServicesSuccessImpl>
    implements _$$BookedServicesSuccessImplCopyWith<$Res> {
  __$$BookedServicesSuccessImplCopyWithImpl(_$BookedServicesSuccessImpl _value,
      $Res Function(_$BookedServicesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookedServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookedServices = null,
  }) {
    return _then(_$BookedServicesSuccessImpl(
      null == bookedServices
          ? _value.bookedServices
          : bookedServices // ignore: cast_nullable_to_non_nullable
              as ServicesBookingModel,
    ));
  }
}

/// @nodoc

class _$BookedServicesSuccessImpl implements BookedServicesSuccess {
  const _$BookedServicesSuccessImpl(this.bookedServices);

  @override
  final ServicesBookingModel bookedServices;

  @override
  String toString() {
    return 'BookedServicesState.success(bookedServices: $bookedServices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedServicesSuccessImpl &&
            (identical(other.bookedServices, bookedServices) ||
                other.bookedServices == bookedServices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookedServices);

  /// Create a copy of BookedServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookedServicesSuccessImplCopyWith<_$BookedServicesSuccessImpl>
      get copyWith => __$$BookedServicesSuccessImplCopyWithImpl<
          _$BookedServicesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServicesBookingModel bookedServices) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(bookedServices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ServicesBookingModel bookedServices)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(bookedServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServicesBookingModel bookedServices)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(bookedServices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(BookedServicesLoading value) loading,
    required TResult Function(BookedServicesSuccess value) success,
    required TResult Function(BookedServicesError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookedServicesLoading value)? loading,
    TResult? Function(BookedServicesSuccess value)? success,
    TResult? Function(BookedServicesError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookedServicesLoading value)? loading,
    TResult Function(BookedServicesSuccess value)? success,
    TResult Function(BookedServicesError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BookedServicesSuccess implements BookedServicesState {
  const factory BookedServicesSuccess(
      final ServicesBookingModel bookedServices) = _$BookedServicesSuccessImpl;

  ServicesBookingModel get bookedServices;

  /// Create a copy of BookedServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookedServicesSuccessImplCopyWith<_$BookedServicesSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookedServicesErrorImplCopyWith<$Res> {
  factory _$$BookedServicesErrorImplCopyWith(_$BookedServicesErrorImpl value,
          $Res Function(_$BookedServicesErrorImpl) then) =
      __$$BookedServicesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$BookedServicesErrorImplCopyWithImpl<$Res>
    extends _$BookedServicesStateCopyWithImpl<$Res, _$BookedServicesErrorImpl>
    implements _$$BookedServicesErrorImplCopyWith<$Res> {
  __$$BookedServicesErrorImplCopyWithImpl(_$BookedServicesErrorImpl _value,
      $Res Function(_$BookedServicesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookedServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$BookedServicesErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookedServicesErrorImpl implements BookedServicesError {
  const _$BookedServicesErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BookedServicesState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookedServicesErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of BookedServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookedServicesErrorImplCopyWith<_$BookedServicesErrorImpl> get copyWith =>
      __$$BookedServicesErrorImplCopyWithImpl<_$BookedServicesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ServicesBookingModel bookedServices) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ServicesBookingModel bookedServices)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ServicesBookingModel bookedServices)? success,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(BookedServicesLoading value) loading,
    required TResult Function(BookedServicesSuccess value) success,
    required TResult Function(BookedServicesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(BookedServicesLoading value)? loading,
    TResult? Function(BookedServicesSuccess value)? success,
    TResult? Function(BookedServicesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(BookedServicesLoading value)? loading,
    TResult Function(BookedServicesSuccess value)? success,
    TResult Function(BookedServicesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BookedServicesError implements BookedServicesState {
  const factory BookedServicesError(final String errorMessage) =
      _$BookedServicesErrorImpl;

  String get errorMessage;

  /// Create a copy of BookedServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookedServicesErrorImplCopyWith<_$BookedServicesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
