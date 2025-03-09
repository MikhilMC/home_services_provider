// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() categoriesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? categoriesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? categoriesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_categoriesFetched value) categoriesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_categoriesFetched value)? categoriesFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_categoriesFetched value)? categoriesFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesListEventCopyWith<$Res> {
  factory $CategoriesListEventCopyWith(
          CategoriesListEvent value, $Res Function(CategoriesListEvent) then) =
      _$CategoriesListEventCopyWithImpl<$Res, CategoriesListEvent>;
}

/// @nodoc
class _$CategoriesListEventCopyWithImpl<$Res, $Val extends CategoriesListEvent>
    implements $CategoriesListEventCopyWith<$Res> {
  _$CategoriesListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesListEvent
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
    extends _$CategoriesListEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CategoriesListEvent.started()';
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
    required TResult Function() categoriesFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? categoriesFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? categoriesFetched,
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
    required TResult Function(_categoriesFetched value) categoriesFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_categoriesFetched value)? categoriesFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_categoriesFetched value)? categoriesFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoriesListEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$categoriesFetchedImplCopyWith<$Res> {
  factory _$$categoriesFetchedImplCopyWith(_$categoriesFetchedImpl value,
          $Res Function(_$categoriesFetchedImpl) then) =
      __$$categoriesFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$categoriesFetchedImplCopyWithImpl<$Res>
    extends _$CategoriesListEventCopyWithImpl<$Res, _$categoriesFetchedImpl>
    implements _$$categoriesFetchedImplCopyWith<$Res> {
  __$$categoriesFetchedImplCopyWithImpl(_$categoriesFetchedImpl _value,
      $Res Function(_$categoriesFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$categoriesFetchedImpl implements _categoriesFetched {
  const _$categoriesFetchedImpl();

  @override
  String toString() {
    return 'CategoriesListEvent.categoriesFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$categoriesFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() categoriesFetched,
  }) {
    return categoriesFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? categoriesFetched,
  }) {
    return categoriesFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? categoriesFetched,
    required TResult orElse(),
  }) {
    if (categoriesFetched != null) {
      return categoriesFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_categoriesFetched value) categoriesFetched,
  }) {
    return categoriesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_categoriesFetched value)? categoriesFetched,
  }) {
    return categoriesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_categoriesFetched value)? categoriesFetched,
    required TResult orElse(),
  }) {
    if (categoriesFetched != null) {
      return categoriesFetched(this);
    }
    return orElse();
  }
}

abstract class _categoriesFetched implements CategoriesListEvent {
  const factory _categoriesFetched() = _$categoriesFetchedImpl;
}

/// @nodoc
mixin _$CategoriesListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesListLoading value) loading,
    required TResult Function(CategoriesListSuccess value) success,
    required TResult Function(CategoriesListError value) error,
    required TResult Function(CategoriesListEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesListLoading value)? loading,
    TResult? Function(CategoriesListSuccess value)? success,
    TResult? Function(CategoriesListError value)? error,
    TResult? Function(CategoriesListEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesListLoading value)? loading,
    TResult Function(CategoriesListSuccess value)? success,
    TResult Function(CategoriesListError value)? error,
    TResult Function(CategoriesListEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesListStateCopyWith<$Res> {
  factory $CategoriesListStateCopyWith(
          CategoriesListState value, $Res Function(CategoriesListState) then) =
      _$CategoriesListStateCopyWithImpl<$Res, CategoriesListState>;
}

/// @nodoc
class _$CategoriesListStateCopyWithImpl<$Res, $Val extends CategoriesListState>
    implements $CategoriesListStateCopyWith<$Res> {
  _$CategoriesListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesListState
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
    extends _$CategoriesListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CategoriesListState.initial()';
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
    required TResult Function(List<CategoryModel> categories) success,
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
    TResult? Function(List<CategoryModel> categories)? success,
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
    TResult Function(List<CategoryModel> categories)? success,
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
    required TResult Function(CategoriesListLoading value) loading,
    required TResult Function(CategoriesListSuccess value) success,
    required TResult Function(CategoriesListError value) error,
    required TResult Function(CategoriesListEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesListLoading value)? loading,
    TResult? Function(CategoriesListSuccess value)? success,
    TResult? Function(CategoriesListError value)? error,
    TResult? Function(CategoriesListEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesListLoading value)? loading,
    TResult Function(CategoriesListSuccess value)? success,
    TResult Function(CategoriesListError value)? error,
    TResult Function(CategoriesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoriesListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CategoriesListLoadingImplCopyWith<$Res> {
  factory _$$CategoriesListLoadingImplCopyWith(
          _$CategoriesListLoadingImpl value,
          $Res Function(_$CategoriesListLoadingImpl) then) =
      __$$CategoriesListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesListLoadingImplCopyWithImpl<$Res>
    extends _$CategoriesListStateCopyWithImpl<$Res, _$CategoriesListLoadingImpl>
    implements _$$CategoriesListLoadingImplCopyWith<$Res> {
  __$$CategoriesListLoadingImplCopyWithImpl(_$CategoriesListLoadingImpl _value,
      $Res Function(_$CategoriesListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesListLoadingImpl implements CategoriesListLoading {
  const _$CategoriesListLoadingImpl();

  @override
  String toString() {
    return 'CategoriesListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
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
    TResult? Function(List<CategoryModel> categories)? success,
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
    TResult Function(List<CategoryModel> categories)? success,
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
    required TResult Function(CategoriesListLoading value) loading,
    required TResult Function(CategoriesListSuccess value) success,
    required TResult Function(CategoriesListError value) error,
    required TResult Function(CategoriesListEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesListLoading value)? loading,
    TResult? Function(CategoriesListSuccess value)? success,
    TResult? Function(CategoriesListError value)? error,
    TResult? Function(CategoriesListEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesListLoading value)? loading,
    TResult Function(CategoriesListSuccess value)? success,
    TResult Function(CategoriesListError value)? error,
    TResult Function(CategoriesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoriesListLoading implements CategoriesListState {
  const factory CategoriesListLoading() = _$CategoriesListLoadingImpl;
}

/// @nodoc
abstract class _$$CategoriesListSuccessImplCopyWith<$Res> {
  factory _$$CategoriesListSuccessImplCopyWith(
          _$CategoriesListSuccessImpl value,
          $Res Function(_$CategoriesListSuccessImpl) then) =
      __$$CategoriesListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel> categories});
}

/// @nodoc
class __$$CategoriesListSuccessImplCopyWithImpl<$Res>
    extends _$CategoriesListStateCopyWithImpl<$Res, _$CategoriesListSuccessImpl>
    implements _$$CategoriesListSuccessImplCopyWith<$Res> {
  __$$CategoriesListSuccessImplCopyWithImpl(_$CategoriesListSuccessImpl _value,
      $Res Function(_$CategoriesListSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesListSuccessImpl(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$CategoriesListSuccessImpl implements CategoriesListSuccess {
  const _$CategoriesListSuccessImpl(final List<CategoryModel> categories)
      : _categories = categories;

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesListState.success(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoriesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesListSuccessImplCopyWith<_$CategoriesListSuccessImpl>
      get copyWith => __$$CategoriesListSuccessImplCopyWithImpl<
          _$CategoriesListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel> categories)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel> categories)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CategoriesListLoading value) loading,
    required TResult Function(CategoriesListSuccess value) success,
    required TResult Function(CategoriesListError value) error,
    required TResult Function(CategoriesListEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesListLoading value)? loading,
    TResult? Function(CategoriesListSuccess value)? success,
    TResult? Function(CategoriesListError value)? error,
    TResult? Function(CategoriesListEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesListLoading value)? loading,
    TResult Function(CategoriesListSuccess value)? success,
    TResult Function(CategoriesListError value)? error,
    TResult Function(CategoriesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CategoriesListSuccess implements CategoriesListState {
  const factory CategoriesListSuccess(final List<CategoryModel> categories) =
      _$CategoriesListSuccessImpl;

  List<CategoryModel> get categories;

  /// Create a copy of CategoriesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesListSuccessImplCopyWith<_$CategoriesListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesListErrorImplCopyWith<$Res> {
  factory _$$CategoriesListErrorImplCopyWith(_$CategoriesListErrorImpl value,
          $Res Function(_$CategoriesListErrorImpl) then) =
      __$$CategoriesListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CategoriesListErrorImplCopyWithImpl<$Res>
    extends _$CategoriesListStateCopyWithImpl<$Res, _$CategoriesListErrorImpl>
    implements _$$CategoriesListErrorImplCopyWith<$Res> {
  __$$CategoriesListErrorImplCopyWithImpl(_$CategoriesListErrorImpl _value,
      $Res Function(_$CategoriesListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CategoriesListErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoriesListErrorImpl implements CategoriesListError {
  const _$CategoriesListErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CategoriesListState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesListErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CategoriesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesListErrorImplCopyWith<_$CategoriesListErrorImpl> get copyWith =>
      __$$CategoriesListErrorImplCopyWithImpl<_$CategoriesListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
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
    TResult? Function(List<CategoryModel> categories)? success,
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
    TResult Function(List<CategoryModel> categories)? success,
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
    required TResult Function(CategoriesListLoading value) loading,
    required TResult Function(CategoriesListSuccess value) success,
    required TResult Function(CategoriesListError value) error,
    required TResult Function(CategoriesListEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesListLoading value)? loading,
    TResult? Function(CategoriesListSuccess value)? success,
    TResult? Function(CategoriesListError value)? error,
    TResult? Function(CategoriesListEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesListLoading value)? loading,
    TResult Function(CategoriesListSuccess value)? success,
    TResult Function(CategoriesListError value)? error,
    TResult Function(CategoriesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoriesListError implements CategoriesListState {
  const factory CategoriesListError(final String errorMessage) =
      _$CategoriesListErrorImpl;

  String get errorMessage;

  /// Create a copy of CategoriesListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesListErrorImplCopyWith<_$CategoriesListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesListEmptyImplCopyWith<$Res> {
  factory _$$CategoriesListEmptyImplCopyWith(_$CategoriesListEmptyImpl value,
          $Res Function(_$CategoriesListEmptyImpl) then) =
      __$$CategoriesListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesListEmptyImplCopyWithImpl<$Res>
    extends _$CategoriesListStateCopyWithImpl<$Res, _$CategoriesListEmptyImpl>
    implements _$$CategoriesListEmptyImplCopyWith<$Res> {
  __$$CategoriesListEmptyImplCopyWithImpl(_$CategoriesListEmptyImpl _value,
      $Res Function(_$CategoriesListEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesListEmptyImpl implements CategoriesListEmpty {
  const _$CategoriesListEmptyImpl();

  @override
  String toString() {
    return 'CategoriesListState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel> categories) success,
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
    TResult? Function(List<CategoryModel> categories)? success,
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
    TResult Function(List<CategoryModel> categories)? success,
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
    required TResult Function(CategoriesListLoading value) loading,
    required TResult Function(CategoriesListSuccess value) success,
    required TResult Function(CategoriesListError value) error,
    required TResult Function(CategoriesListEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CategoriesListLoading value)? loading,
    TResult? Function(CategoriesListSuccess value)? success,
    TResult? Function(CategoriesListError value)? error,
    TResult? Function(CategoriesListEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CategoriesListLoading value)? loading,
    TResult Function(CategoriesListSuccess value)? success,
    TResult Function(CategoriesListError value)? error,
    TResult Function(CategoriesListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class CategoriesListEmpty implements CategoriesListState {
  const factory CategoriesListEmpty() = _$CategoriesListEmptyImpl;
}
