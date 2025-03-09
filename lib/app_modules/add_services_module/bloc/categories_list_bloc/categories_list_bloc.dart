import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/category_model/category_model.dart';
import 'package:home_services_provider/app_modules/add_services_module/service/get_categories.dart';

part 'categories_list_event.dart';
part 'categories_list_state.dart';
part 'categories_list_bloc.freezed.dart';

class CategoriesListBloc
    extends Bloc<CategoriesListEvent, CategoriesListState> {
  CategoriesListBloc() : super(_Initial()) {
    on<_categoriesFetched>((event, emit) async {
      emit(CategoriesListState.loading());
      try {
        final categories = await getCategories();
        if (categories.isNotEmpty) {
          emit(CategoriesListState.success(categories));
        } else {
          emit(CategoriesListState.empty());
        }
      } catch (e) {
        emit(CategoriesListState.error(e.toString()));
      }
    });
  }
}
