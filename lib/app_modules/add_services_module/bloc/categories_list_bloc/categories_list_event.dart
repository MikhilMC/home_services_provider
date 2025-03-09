part of 'categories_list_bloc.dart';

@freezed
class CategoriesListEvent with _$CategoriesListEvent {
  const factory CategoriesListEvent.started() = _Started;
  const factory CategoriesListEvent.categoriesFetched() = _categoriesFetched;
}
