// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/add_services_module/bloc/add_services_bloc/add_services_bloc.dart';
import 'package:home_services_provider/app_modules/add_services_module/class/add_services_details.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/category_model/category_model.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/sub_service/sub_service.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/sub_service_model.dart';
import 'package:home_services_provider/app_modules/add_services_module/widget/category_dropdown.dart';
import 'package:home_services_provider/app_modules/add_services_module/widget/service_card.dart';
import 'package:home_services_provider/app_modules/add_services_module/widget/sub_service_dropdown.dart';
import 'package:home_services_provider/app_modules/login_module/view/login_page.dart';
import 'package:home_services_provider/app_utils/app_helper.dart';
import 'package:home_services_provider/app_widgets/custom_button.dart';
import 'package:home_services_provider/app_widgets/normal_text_field.dart';
import 'package:home_services_provider/app_widgets/overlay_loader_widget.dart';

class AddServicesPage extends StatefulWidget {
  final int serviceProviderId;
  const AddServicesPage({
    super.key,
    required this.serviceProviderId,
  });

  @override
  State<AddServicesPage> createState() => _AddServicesPageState();
}

class _AddServicesPageState extends State<AddServicesPage> {
  // Form controllers
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _ratePerSlotController = TextEditingController();

  // Dropdown value
  CategoryModel? _selectedCategory;
  SubService? _selectedSubService;

  // List to store added services
  final List<SubServiceModel> _servicesList = [];

  @override
  void dispose() {
    super.dispose();
    _ratePerSlotController.dispose();
  }

  // Function to add a service to the list
  void _addService() {
    if (_formKey.currentState!.validate() && _selectedCategory != null) {
      double? rate = double.tryParse(_ratePerSlotController.text.trim());
      if (rate == null) {
        AppHelper.showErrorDialogue(context, 'Invalid rate entered');
        return;
      }

      setState(() {
        int existingIndex = _servicesList.indexWhere(
          (element) => element.service.id == _selectedSubService!.id,
        );

        if (existingIndex != -1) {
          // Replace the existing object with a new one
          _servicesList[existingIndex] = SubServiceModel(
            category: _servicesList[existingIndex].category,
            service: _servicesList[existingIndex].service,
            ratePerSlot:
                rate, // ✅ Creating a new object instead of modifying the old one
          );
        } else {
          _servicesList.add(
            SubServiceModel(
              category: _selectedCategory ?? CategoryModel.empty,
              service: _selectedSubService ?? SubService.empty,
              ratePerSlot: rate,
            ),
          );
        }
        _ratePerSlotController.clear();
      });
    }
  }

  // Function to submit the entire list to the backend
  void _submitServices() {
    FocusScope.of(context).unfocus();
    if (_selectedCategory != null) {
      if (_servicesList.isNotEmpty) {
        if (kDebugMode) {
          print("screen");
        }
        final AddServicesDetails addServicesDetails = AddServicesDetails(
          serviceProviderId: widget.serviceProviderId,
          servicesOffered: _servicesList,
        );

        final addServicesBloc = BlocProvider.of<AddServicesBloc>(context);

        addServicesBloc.add(
          AddServicesEvent.servicesAdded(
            addServicesDetails,
          ),
        );
      } else {
        AppHelper.showErrorDialogue(
          context,
          'Please add at least one service.',
        );
      }
    } else {
      AppHelper.showErrorDialogue(
        context,
        'Please select a category.',
      );
    }
  }

  // Function to delete a service from the list
  void _deleteService(int index) {
    setState(() {
      _servicesList.removeAt(index);
    });
  }

  // Function to handle category change
  void _onCategoryChanged(CategoryModel? value) {
    if (value != _selectedCategory) {
      setState(() {
        _selectedCategory = value;
        _selectedSubService = null; // Reset sub-service
        _servicesList.clear(); // Clear the services list if category changes
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Services'),
      ),
      body: BlocConsumer<AddServicesBloc, AddServicesState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            success: (response) {
              if (response.message == "Services added successfully") {
                AppHelper.showCustomSnackBar(
                  context,
                  "Services added successfully",
                );
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              } else {
                AppHelper.showErrorDialogue(
                  context,
                  "Adding services failed",
                );
              }
            },
            failure: (errorMessage) => AppHelper.showErrorDialogue(
              context,
              "Adding services failed: $errorMessage",
            ),
          );
        },
        builder: (context, state) {
          bool isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return OverlayLoaderWidget(
            isLoading: isLoading,
            childWidget: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Form for adding services
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        // Category Dropdown
                        CategoryDropdown(
                          selectedCategory:
                              _selectedCategory ?? CategoryModel.empty,
                          onSelectingCategory: _onCategoryChanged,
                        ),
                        SizedBox(height: 16),
                        // Service Name Text Field
                        SubServiceDropdown(
                          category: _selectedCategory ?? CategoryModel.empty,
                          selectedSubService:
                              _selectedSubService ?? SubService.empty,
                          onSelectingSubService: (subService) {
                            setState(() {
                              _selectedSubService = subService;
                            });
                          },
                        ),

                        SizedBox(height: 16),
                        // Rate Per Hour Text Field
                        NormalTextField(
                          textEditingController: _ratePerSlotController,
                          validatorFunction: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the rate per slot of 3 hours';
                            }
                            if (double.tryParse(value) == null) {
                              return 'Please enter a valid number';
                            }
                            return null;
                          },
                          hintText: "Enter rate per slot of 3 hours",
                          labelText: "Rate Per Slot",
                          textInputType: TextInputType.number,
                        ),
                        SizedBox(height: 16),
                        // Add and Submit Buttons
                        Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                buttonWidth: double.infinity,
                                backgroundColor: AppColors.fifthColor,
                                textColor: AppColors.firstColor,
                                labelText: "Add Service",
                                onClick: _addService,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: CustomButton(
                                buttonWidth: double.infinity,
                                backgroundColor: AppColors.firstColor,
                                textColor: AppColors.fifthColor,
                                labelText: "Submit Services",
                                onClick: _submitServices,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  // List of Added Services
                  Expanded(
                    child: ListView.builder(
                      itemCount: _servicesList.length,
                      itemBuilder: (context, index) {
                        final subService = _servicesList[index];
                        return ServiceCard(
                          serviceName: subService.service.serviceName,
                          category: subService.category.category,
                          ratePerSlot: subService.ratePerSlot,
                          onDelete: () => _deleteService(index),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
