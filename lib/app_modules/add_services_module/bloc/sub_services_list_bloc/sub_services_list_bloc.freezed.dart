// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_services_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubServicesListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int categoryId) subServicesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int categoryId)? subServicesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int categoryId)? subServicesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_subServicesFetched value) subServicesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_subServicesFetched value)? subServicesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_subServicesFetched value)? subServicesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubServicesListEventCopyWith<$Res> {
  factory $SubServicesListEventCopyWith(SubServicesListEvent value,
          $Res Function(SubServicesListEvent) then) =
      _$SubServicesListEventCopyWithImpl<$Res, SubServicesListEvent>;
}

/// @nodoc
class _$SubServicesListEventCopyWithImpl<$Res,
        $Val extends SubServicesListEvent>
    implements $SubServicesListEventCopyWith<$Res> {
  _$SubServicesListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubServicesListEvent
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
    extends _$SubServicesListEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServicesListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SubServicesListEvent.started()';
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
    required TResult Function(int categoryId) subServicesFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int categoryId)? subServicesFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int categoryId)? subServicesFetched,
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
    required TResult Function(_subServicesFetched value) subServicesFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_subServicesFetched value)? subServicesFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_subServicesFetched value)? subServicesFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SubServicesListEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$subServicesFetchedImplCopyWith<$Res> {
  factory _$$subServicesFetchedImplCopyWith(_$subServicesFetchedImpl value,
          $Res Function(_$subServicesFetchedImpl) then) =
      __$$subServicesFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$subServicesFetchedImplCopyWithImpl<$Res>
    extends _$SubServicesListEventCopyWithImpl<$Res, _$subServicesFetchedImpl>
    implements _$$subServicesFetchedImplCopyWith<$Res> {
  __$$subServicesFetchedImplCopyWithImpl(_$subServicesFetchedImpl _value,
      $Res Function(_$subServicesFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServicesListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$subServicesFetchedImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$subServicesFetchedImpl implements _subServicesFetched {
  const _$subServicesFetchedImpl(this.categoryId);

  @override
  final int categoryId;

  @override
  String toString() {
    return 'SubServicesListEvent.subServicesFetched(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$subServicesFetchedImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of SubServicesListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$subServicesFetchedImplCopyWith<_$subServicesFetchedImpl> get copyWith =>
      __$$subServicesFetchedImplCopyWithImpl<_$subServicesFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int categoryId) subServicesFetched,
  }) {
    return subServicesFetched(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int categoryId)? subServicesFetched,
  }) {
    return subServicesFetched?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int categoryId)? subServicesFetched,
    required TResult orElse(),
  }) {
    if (subServicesFetched != null) {
      return subServicesFetched(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_subServicesFetched value) subServicesFetched,
  }) {
    return subServicesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_subServicesFetched value)? subServicesFetched,
  }) {
    return subServicesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_subServicesFetched value)? subServicesFetched,
    required TResult orElse(),
  }) {
    if (subServicesFetched != null) {
      return subServicesFetched(this);
    }
    return orElse();
  }
}

abstract class _subServicesFetched implements SubServicesListEvent {
  const factory _subServicesFetched(final int categoryId) =
      _$subServicesFetchedImpl;

  int get categoryId;

  /// Create a copy of SubServicesListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$subServicesFetchedImplCopyWith<_$subServicesFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubServicesListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SubService> subServices) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SubService> subServices)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SubService> subServices)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SubServicesListLoading value) loading,
    required TResult Function(SubServicesListSuccess value) success,
    required TResult Function(SubServicesListError value) error,
    required TResult Function(SubServicesListEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SubServicesListLoading value)? loading,
    TResult? Function(SubServicesListSuccess value)? success,
    TResult? Function(SubServicesListError value)? error,
    TResult? Function(SubServicesListEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SubServicesListLoading value)? loading,
    TResult Function(SubServicesListSuccess value)? success,
    TResult Function(SubServicesListError value)? error,
    TResult Function(SubServicesListEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubServicesListStateCopyWith<$Res> {
  factory $SubServicesListStateCopyWith(SubServicesListState value,
          $Res Function(SubServicesListState) then) =
      _$SubServicesListStateCopyWithImpl<$Res, SubServicesListState>;
}

/// @nodoc
class _$SubServicesListStateCopyWithImpl<$Res,
        $Val extends SubServicesListState>
    implements $SubServicesListStateCopyWith<$Res> {
  _$SubServicesListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubServicesListState
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
    extends _$SubServicesListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServicesListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SubServicesListState.initial()';
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
    required TResult Function(List<SubService> subServices) success,
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
    TResult? Function(List<SubService> subServices)? success,
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
    TResult Function(List<SubService> subServices)? success,
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
    required TResult Function(SubServicesListLoading value) loading,
    required TResult Function(SubServicesListSuccess value) success,
    required TResult Function(SubServicesListError value) error,
    required TResult Function(SubServicesListEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SubServicesListLoading value)? loading,
    TResult? Function(SubServicesListSuccess value)? success,
    TResult? Function(SubServicesListError value)? error,
    TResult? Function(SubServicesListEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SubServicesListLoading value)? loading,
    TResult Function(SubServicesListSuccess value)? success,
    TResult Function(SubServicesListError value)? error,
    TResult Function(SubServicesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubServicesListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SubServicesListLoadingImplCopyWith<$Res> {
  factory _$$SubServicesListLoadingImplCopyWith(
          _$SubServicesListLoadingImpl value,
          $Res Function(_$SubServicesListLoadingImpl) then) =
      __$$SubServicesListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubServicesListLoadingImplCopyWithImpl<$Res>
    extends _$SubServicesListStateCopyWithImpl<$Res,
        _$SubServicesListLoadingImpl>
    implements _$$SubServicesListLoadingImplCopyWith<$Res> {
  __$$SubServicesListLoadingImplCopyWithImpl(
      _$SubServicesListLoadingImpl _value,
      $Res Function(_$SubServicesListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServicesListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubServicesListLoadingImpl implements SubServicesListLoading {
  const _$SubServicesListLoadingImpl();

  @override
  String toString() {
    return 'SubServicesListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubServicesListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SubService> subServices) success,
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
    TResult? Function(List<SubService> subServices)? success,
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
    TResult Function(List<SubService> subServices)? success,
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
    required TResult Function(SubServicesListLoading value) loading,
    required TResult Function(SubServicesListSuccess value) success,
    required TResult Function(SubServicesListError value) error,
    required TResult Function(SubServicesListEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SubServicesListLoading value)? loading,
    TResult? Function(SubServicesListSuccess value)? success,
    TResult? Function(SubServicesListError value)? error,
    TResult? Function(SubServicesListEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SubServicesListLoading value)? loading,
    TResult Function(SubServicesListSuccess value)? success,
    TResult Function(SubServicesListError value)? error,
    TResult Function(SubServicesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SubServicesListLoading implements SubServicesListState {
  const factory SubServicesListLoading() = _$SubServicesListLoadingImpl;
}

/// @nodoc
abstract class _$$SubServicesListSuccessImplCopyWith<$Res> {
  factory _$$SubServicesListSuccessImplCopyWith(
          _$SubServicesListSuccessImpl value,
          $Res Function(_$SubServicesListSuccessImpl) then) =
      __$$SubServicesListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SubService> subServices});
}

/// @nodoc
class __$$SubServicesListSuccessImplCopyWithImpl<$Res>
    extends _$SubServicesListStateCopyWithImpl<$Res,
        _$SubServicesListSuccessImpl>
    implements _$$SubServicesListSuccessImplCopyWith<$Res> {
  __$$SubServicesListSuccessImplCopyWithImpl(
      _$SubServicesListSuccessImpl _value,
      $Res Function(_$SubServicesListSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServicesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subServices = null,
  }) {
    return _then(_$SubServicesListSuccessImpl(
      null == subServices
          ? _value._subServices
          : subServices // ignore: cast_nullable_to_non_nullable
              as List<SubService>,
    ));
  }
}

/// @nodoc

class _$SubServicesListSuccessImpl implements SubServicesListSuccess {
  const _$SubServicesListSuccessImpl(final List<SubService> subServices)
      : _subServices = subServices;

  final List<SubService> _subServices;
  @override
  List<SubService> get subServices {
    if (_subServices is EqualUnmodifiableListView) return _subServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subServices);
  }

  @override
  String toString() {
    return 'SubServicesListState.success(subServices: $subServices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubServicesListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._subServices, _subServices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subServices));

  /// Create a copy of SubServicesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubServicesListSuccessImplCopyWith<_$SubServicesListSuccessImpl>
      get copyWith => __$$SubServicesListSuccessImplCopyWithImpl<
          _$SubServicesListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SubService> subServices) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(subServices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SubService> subServices)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(subServices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SubService> subServices)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(subServices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SubServicesListLoading value) loading,
    required TResult Function(SubServicesListSuccess value) success,
    required TResult Function(SubServicesListError value) error,
    required TResult Function(SubServicesListEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SubServicesListLoading value)? loading,
    TResult? Function(SubServicesListSuccess value)? success,
    TResult? Function(SubServicesListError value)? error,
    TResult? Function(SubServicesListEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SubServicesListLoading value)? loading,
    TResult Function(SubServicesListSuccess value)? success,
    TResult Function(SubServicesListError value)? error,
    TResult Function(SubServicesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SubServicesListSuccess implements SubServicesListState {
  const factory SubServicesListSuccess(final List<SubService> subServices) =
      _$SubServicesListSuccessImpl;

  List<SubService> get subServices;

  /// Create a copy of SubServicesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubServicesListSuccessImplCopyWith<_$SubServicesListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubServicesListErrorImplCopyWith<$Res> {
  factory _$$SubServicesListErrorImplCopyWith(_$SubServicesListErrorImpl value,
          $Res Function(_$SubServicesListErrorImpl) then) =
      __$$SubServicesListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SubServicesListErrorImplCopyWithImpl<$Res>
    extends _$SubServicesListStateCopyWithImpl<$Res, _$SubServicesListErrorImpl>
    implements _$$SubServicesListErrorImplCopyWith<$Res> {
  __$$SubServicesListErrorImplCopyWithImpl(_$SubServicesListErrorImpl _value,
      $Res Function(_$SubServicesListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServicesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$SubServicesListErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubServicesListErrorImpl implements SubServicesListError {
  const _$SubServicesListErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SubServicesListState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubServicesListErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of SubServicesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubServicesListErrorImplCopyWith<_$SubServicesListErrorImpl>
      get copyWith =>
          __$$SubServicesListErrorImplCopyWithImpl<_$SubServicesListErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SubService> subServices) success,
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
    TResult? Function(List<SubService> subServices)? success,
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
    TResult Function(List<SubService> subServices)? success,
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
    required TResult Function(SubServicesListLoading value) loading,
    required TResult Function(SubServicesListSuccess value) success,
    required TResult Function(SubServicesListError value) error,
    required TResult Function(SubServicesListEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SubServicesListLoading value)? loading,
    TResult? Function(SubServicesListSuccess value)? success,
    TResult? Function(SubServicesListError value)? error,
    TResult? Function(SubServicesListEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SubServicesListLoading value)? loading,
    TResult Function(SubServicesListSuccess value)? success,
    TResult Function(SubServicesListError value)? error,
    TResult Function(SubServicesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SubServicesListError implements SubServicesListState {
  const factory SubServicesListError(final String errorMessage) =
      _$SubServicesListErrorImpl;

  String get errorMessage;

  /// Create a copy of SubServicesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubServicesListErrorImplCopyWith<_$SubServicesListErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubServicesListEmptyImplCopyWith<$Res> {
  factory _$$SubServicesListEmptyImplCopyWith(_$SubServicesListEmptyImpl value,
          $Res Function(_$SubServicesListEmptyImpl) then) =
      __$$SubServicesListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubServicesListEmptyImplCopyWithImpl<$Res>
    extends _$SubServicesListStateCopyWithImpl<$Res, _$SubServicesListEmptyImpl>
    implements _$$SubServicesListEmptyImplCopyWith<$Res> {
  __$$SubServicesListEmptyImplCopyWithImpl(_$SubServicesListEmptyImpl _value,
      $Res Function(_$SubServicesListEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubServicesListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubServicesListEmptyImpl implements SubServicesListEmpty {
  const _$SubServicesListEmptyImpl();

  @override
  String toString() {
    return 'SubServicesListState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubServicesListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SubService> subServices) success,
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
    TResult? Function(List<SubService> subServices)? success,
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
    TResult Function(List<SubService> subServices)? success,
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
    required TResult Function(SubServicesListLoading value) loading,
    required TResult Function(SubServicesListSuccess value) success,
    required TResult Function(SubServicesListError value) error,
    required TResult Function(SubServicesListEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SubServicesListLoading value)? loading,
    TResult? Function(SubServicesListSuccess value)? success,
    TResult? Function(SubServicesListError value)? error,
    TResult? Function(SubServicesListEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SubServicesListLoading value)? loading,
    TResult Function(SubServicesListSuccess value)? success,
    TResult Function(SubServicesListError value)? error,
    TResult Function(SubServicesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class SubServicesListEmpty implements SubServicesListState {
  const factory SubServicesListEmpty() = _$SubServicesListEmptyImpl;
}
