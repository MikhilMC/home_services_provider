// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/add_services_module/bloc/categories_list_bloc/categories_list_bloc.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/category_model/category_model.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';
import 'package:home_services_provider/app_widgets/empty_list.dart';

class CategoryDropdown extends StatelessWidget {
  final CategoryModel selectedCategory;
  final Function(CategoryModel?)? onSelectingCategory;
  const CategoryDropdown({
    super.key,
    required this.selectedCategory,
    this.onSelectingCategory,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesListBloc, CategoriesListState>(
      builder: (context, state) {
        if (state is CategoriesListError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is CategoriesListEmpty) {
          return EmptyList(
            message: "There are no categories available",
          );
        }

        if (state is! CategoriesListSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final categories = state.categories;
        return DropdownButtonFormField<CategoryModel>(
          value: selectedCategory.isEmpty ? null : selectedCategory,
          decoration: InputDecoration(
            labelText: 'Category',
            border: OutlineInputBorder(),
          ),
          items: categories.map((CategoryModel category) {
            return DropdownMenuItem<CategoryModel>(
              value: category,
              child: Text(category.category),
            );
          }).toList(),
          onChanged: onSelectingCategory,
          validator: (value) {
            if (value == null) {
              return 'Please select a category';
            }
            return null;
          },
        );
      },
    );
  }
}
