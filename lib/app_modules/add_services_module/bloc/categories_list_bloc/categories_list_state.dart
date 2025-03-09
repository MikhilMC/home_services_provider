part of 'categories_list_bloc.dart';

@freezed
class CategoriesListState with _$CategoriesListState {
  const factory CategoriesListState.initial() = _Initial;
  const factory CategoriesListState.loading() = CategoriesListLoading;
  const factory CategoriesListState.success(
    List<CategoryModel> categories,
  ) = CategoriesListSuccess;
  const factory CategoriesListState.error(
    String errorMessage,
  ) = CategoriesListError;
  const factory CategoriesListState.empty() = CategoriesListEmpty;
}
