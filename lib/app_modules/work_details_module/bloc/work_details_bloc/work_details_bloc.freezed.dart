// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int workId) workDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int workId)? workDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int workId)? workDetailsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_workDetailsFetched value) workDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_workDetailsFetched value)? workDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_workDetailsFetched value)? workDetailsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkDetailsEventCopyWith<$Res> {
  factory $WorkDetailsEventCopyWith(
          WorkDetailsEvent value, $Res Function(WorkDetailsEvent) then) =
      _$WorkDetailsEventCopyWithImpl<$Res, WorkDetailsEvent>;
}

/// @nodoc
class _$WorkDetailsEventCopyWithImpl<$Res, $Val extends WorkDetailsEvent>
    implements $WorkDetailsEventCopyWith<$Res> {
  _$WorkDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkDetailsEvent
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
    extends _$WorkDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WorkDetailsEvent.started()';
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
    required TResult Function(int workId) workDetailsFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int workId)? workDetailsFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int workId)? workDetailsFetched,
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
    required TResult Function(_workDetailsFetched value) workDetailsFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_workDetailsFetched value)? workDetailsFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_workDetailsFetched value)? workDetailsFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WorkDetailsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$workDetailsFetchedImplCopyWith<$Res> {
  factory _$$workDetailsFetchedImplCopyWith(_$workDetailsFetchedImpl value,
          $Res Function(_$workDetailsFetchedImpl) then) =
      __$$workDetailsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int workId});
}

/// @nodoc
class __$$workDetailsFetchedImplCopyWithImpl<$Res>
    extends _$WorkDetailsEventCopyWithImpl<$Res, _$workDetailsFetchedImpl>
    implements _$$workDetailsFetchedImplCopyWith<$Res> {
  __$$workDetailsFetchedImplCopyWithImpl(_$workDetailsFetchedImpl _value,
      $Res Function(_$workDetailsFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workId = null,
  }) {
    return _then(_$workDetailsFetchedImpl(
      null == workId
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$workDetailsFetchedImpl implements _workDetailsFetched {
  const _$workDetailsFetchedImpl(this.workId);

  @override
  final int workId;

  @override
  String toString() {
    return 'WorkDetailsEvent.workDetailsFetched(workId: $workId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$workDetailsFetchedImpl &&
            (identical(other.workId, workId) || other.workId == workId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workId);

  /// Create a copy of WorkDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$workDetailsFetchedImplCopyWith<_$workDetailsFetchedImpl> get copyWith =>
      __$$workDetailsFetchedImplCopyWithImpl<_$workDetailsFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int workId) workDetailsFetched,
  }) {
    return workDetailsFetched(workId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int workId)? workDetailsFetched,
  }) {
    return workDetailsFetched?.call(workId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int workId)? workDetailsFetched,
    required TResult orElse(),
  }) {
    if (workDetailsFetched != null) {
      return workDetailsFetched(workId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_workDetailsFetched value) workDetailsFetched,
  }) {
    return workDetailsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_workDetailsFetched value)? workDetailsFetched,
  }) {
    return workDetailsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_workDetailsFetched value)? workDetailsFetched,
    required TResult orElse(),
  }) {
    if (workDetailsFetched != null) {
      return workDetailsFetched(this);
    }
    return orElse();
  }
}

abstract class _workDetailsFetched implements WorkDetailsEvent {
  const factory _workDetailsFetched(final int workId) =
      _$workDetailsFetchedImpl;

  int get workId;

  /// Create a copy of WorkDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$workDetailsFetchedImplCopyWith<_$workDetailsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WorkModel workDetails) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WorkModel workDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WorkModel workDetails)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(WorkDetailsLoading value) loading,
    required TResult Function(WorkDetailsSuccess value) success,
    required TResult Function(WorkDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WorkDetailsLoading value)? loading,
    TResult? Function(WorkDetailsSuccess value)? success,
    TResult? Function(WorkDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WorkDetailsLoading value)? loading,
    TResult Function(WorkDetailsSuccess value)? success,
    TResult Function(WorkDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkDetailsStateCopyWith<$Res> {
  factory $WorkDetailsStateCopyWith(
          WorkDetailsState value, $Res Function(WorkDetailsState) then) =
      _$WorkDetailsStateCopyWithImpl<$Res, WorkDetailsState>;
}

/// @nodoc
class _$WorkDetailsStateCopyWithImpl<$Res, $Val extends WorkDetailsState>
    implements $WorkDetailsStateCopyWith<$Res> {
  _$WorkDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkDetailsState
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
    extends _$WorkDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WorkDetailsState.initial()';
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
    required TResult Function(WorkModel workDetails) success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WorkModel workDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WorkModel workDetails)? success,
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
    required TResult Function(WorkDetailsLoading value) loading,
    required TResult Function(WorkDetailsSuccess value) success,
    required TResult Function(WorkDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WorkDetailsLoading value)? loading,
    TResult? Function(WorkDetailsSuccess value)? success,
    TResult? Function(WorkDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WorkDetailsLoading value)? loading,
    TResult Function(WorkDetailsSuccess value)? success,
    TResult Function(WorkDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorkDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$WorkDetailsLoadingImplCopyWith<$Res> {
  factory _$$WorkDetailsLoadingImplCopyWith(_$WorkDetailsLoadingImpl value,
          $Res Function(_$WorkDetailsLoadingImpl) then) =
      __$$WorkDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkDetailsLoadingImplCopyWithImpl<$Res>
    extends _$WorkDetailsStateCopyWithImpl<$Res, _$WorkDetailsLoadingImpl>
    implements _$$WorkDetailsLoadingImplCopyWith<$Res> {
  __$$WorkDetailsLoadingImplCopyWithImpl(_$WorkDetailsLoadingImpl _value,
      $Res Function(_$WorkDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WorkDetailsLoadingImpl implements WorkDetailsLoading {
  const _$WorkDetailsLoadingImpl();

  @override
  String toString() {
    return 'WorkDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WorkModel workDetails) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WorkModel workDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WorkModel workDetails)? success,
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
    required TResult Function(WorkDetailsLoading value) loading,
    required TResult Function(WorkDetailsSuccess value) success,
    required TResult Function(WorkDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WorkDetailsLoading value)? loading,
    TResult? Function(WorkDetailsSuccess value)? success,
    TResult? Function(WorkDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WorkDetailsLoading value)? loading,
    TResult Function(WorkDetailsSuccess value)? success,
    TResult Function(WorkDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WorkDetailsLoading implements WorkDetailsState {
  const factory WorkDetailsLoading() = _$WorkDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$WorkDetailsSuccessImplCopyWith<$Res> {
  factory _$$WorkDetailsSuccessImplCopyWith(_$WorkDetailsSuccessImpl value,
          $Res Function(_$WorkDetailsSuccessImpl) then) =
      __$$WorkDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WorkModel workDetails});
}

/// @nodoc
class __$$WorkDetailsSuccessImplCopyWithImpl<$Res>
    extends _$WorkDetailsStateCopyWithImpl<$Res, _$WorkDetailsSuccessImpl>
    implements _$$WorkDetailsSuccessImplCopyWith<$Res> {
  __$$WorkDetailsSuccessImplCopyWithImpl(_$WorkDetailsSuccessImpl _value,
      $Res Function(_$WorkDetailsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workDetails = null,
  }) {
    return _then(_$WorkDetailsSuccessImpl(
      null == workDetails
          ? _value.workDetails
          : workDetails // ignore: cast_nullable_to_non_nullable
              as WorkModel,
    ));
  }
}

/// @nodoc

class _$WorkDetailsSuccessImpl implements WorkDetailsSuccess {
  const _$WorkDetailsSuccessImpl(this.workDetails);

  @override
  final WorkModel workDetails;

  @override
  String toString() {
    return 'WorkDetailsState.success(workDetails: $workDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkDetailsSuccessImpl &&
            (identical(other.workDetails, workDetails) ||
                other.workDetails == workDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workDetails);

  /// Create a copy of WorkDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkDetailsSuccessImplCopyWith<_$WorkDetailsSuccessImpl> get copyWith =>
      __$$WorkDetailsSuccessImplCopyWithImpl<_$WorkDetailsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WorkModel workDetails) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(workDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WorkModel workDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(workDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WorkModel workDetails)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(workDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(WorkDetailsLoading value) loading,
    required TResult Function(WorkDetailsSuccess value) success,
    required TResult Function(WorkDetailsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WorkDetailsLoading value)? loading,
    TResult? Function(WorkDetailsSuccess value)? success,
    TResult? Function(WorkDetailsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WorkDetailsLoading value)? loading,
    TResult Function(WorkDetailsSuccess value)? success,
    TResult Function(WorkDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class WorkDetailsSuccess implements WorkDetailsState {
  const factory WorkDetailsSuccess(final WorkModel workDetails) =
      _$WorkDetailsSuccessImpl;

  WorkModel get workDetails;

  /// Create a copy of WorkDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkDetailsSuccessImplCopyWith<_$WorkDetailsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkDetailsErrorImplCopyWith<$Res> {
  factory _$$WorkDetailsErrorImplCopyWith(_$WorkDetailsErrorImpl value,
          $Res Function(_$WorkDetailsErrorImpl) then) =
      __$$WorkDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$WorkDetailsErrorImplCopyWithImpl<$Res>
    extends _$WorkDetailsStateCopyWithImpl<$Res, _$WorkDetailsErrorImpl>
    implements _$$WorkDetailsErrorImplCopyWith<$Res> {
  __$$WorkDetailsErrorImplCopyWithImpl(_$WorkDetailsErrorImpl _value,
      $Res Function(_$WorkDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$WorkDetailsErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WorkDetailsErrorImpl implements WorkDetailsError {
  const _$WorkDetailsErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'WorkDetailsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkDetailsErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of WorkDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkDetailsErrorImplCopyWith<_$WorkDetailsErrorImpl> get copyWith =>
      __$$WorkDetailsErrorImplCopyWithImpl<_$WorkDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(WorkModel workDetails) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(WorkModel workDetails)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(WorkModel workDetails)? success,
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
    required TResult Function(WorkDetailsLoading value) loading,
    required TResult Function(WorkDetailsSuccess value) success,
    required TResult Function(WorkDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(WorkDetailsLoading value)? loading,
    TResult? Function(WorkDetailsSuccess value)? success,
    TResult? Function(WorkDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(WorkDetailsLoading value)? loading,
    TResult Function(WorkDetailsSuccess value)? success,
    TResult Function(WorkDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WorkDetailsError implements WorkDetailsState {
  const factory WorkDetailsError(final String errorMessage) =
      _$WorkDetailsErrorImpl;

  String get errorMessage;

  /// Create a copy of WorkDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkDetailsErrorImplCopyWith<_$WorkDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
