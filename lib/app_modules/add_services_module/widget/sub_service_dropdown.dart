// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/add_services_module/bloc/sub_services_list_bloc/sub_services_list_bloc.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/category_model/category_model.dart';

import 'package:home_services_provider/app_modules/add_services_module/model/sub_service/sub_service.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';
import 'package:home_services_provider/app_widgets/empty_list.dart';

class SubServiceDropdown extends StatefulWidget {
  final CategoryModel category;
  final SubService selectedSubService;
  final Function(SubService?)? onSelectingSubService;
  const SubServiceDropdown({
    super.key,
    required this.category,
    required this.selectedSubService,
    this.onSelectingSubService,
  });

  @override
  State<SubServiceDropdown> createState() => _SubServiceDropdownState();
}

class _SubServiceDropdownState extends State<SubServiceDropdown> {
  @override
  void initState() {
    super.initState();
    if (!widget.category.isEmpty) {
      context
          .read<SubServicesListBloc>()
          .add(SubServicesListEvent.subServicesFetched(widget.category.id));
    }
  }

  @override
  void didUpdateWidget(covariant SubServiceDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.category.id != oldWidget.category.id) {
      context.read<SubServicesListBloc>().add(
            SubServicesListEvent.subServicesFetched(widget.category.id),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (widget.category.isEmpty) {
      return SizedBox(
        height: screenSize.height * 0.0325,
      );
    }
    return BlocBuilder<SubServicesListBloc, SubServicesListState>(
      builder: (context, state) {
        if (state is SubServicesListError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is SubServicesListEmpty) {
          return EmptyList(
            message: "There are no categories available",
          );
        }

        if (state is! SubServicesListSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final subServices = state.subServices;
        return DropdownButtonFormField<SubService>(
          value: widget.selectedSubService.isEmpty
              ? null
              : widget.selectedSubService,
          decoration: InputDecoration(
            labelText: 'Category',
            border: OutlineInputBorder(),
          ),
          items: widget.category.isEmpty
              ? []
              : subServices.isEmpty
                  ? []
                  : subServices.map((SubService subService) {
                      return DropdownMenuItem<SubService>(
                        value: subService,
                        child: Text(subService.serviceName),
                      );
                    }).toList(),
          onChanged: widget.category.isEmpty
              ? null
              : subServices.isEmpty
                  ? null
                  : widget.onSelectingSubService,
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
