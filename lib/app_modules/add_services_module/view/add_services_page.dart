// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/add_services_module/model/category_model/category_model.dart';
import 'package:home_services_provider/app_modules/add_services_module/widget/category_dropdown.dart';
import 'package:home_services_provider/app_modules/login_module/view/login_page.dart';
import 'package:home_services_provider/app_utils/app_helper.dart';
import 'package:home_services_provider/app_widgets/custom_button.dart';
import 'package:home_services_provider/app_widgets/normal_text_field.dart';

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
  final TextEditingController _serviceNameController = TextEditingController();
  final TextEditingController _ratePerHourController = TextEditingController();

  // Dropdown value
  CategoryModel? _selectedCategory;

  // List to store added services
  final List<Map<String, dynamic>> _servicesList = [];

  // Function to add a service to the list
  void _addService() {
    if (_formKey.currentState!.validate() && _selectedCategory != null) {
      setState(() {
        _servicesList.add({
          'category': _selectedCategory,
          'serviceName': _serviceNameController.text,
          'ratePerSlot': _ratePerHourController.text,
        });
        // Clear the form fields except the category
        _serviceNameController.clear();
        _ratePerHourController.clear();
      });
    }
  }

  // Function to submit the entire list to the backend
  void _submitServices() {
    if (_servicesList.isEmpty) {
      AppHelper.showErrorDialogue(
        context,
        'Please add at least one service.',
      );
      return;
    }
    // Simulate backend submission
    if (kDebugMode) {
      print('Submitting services: $_servicesList');
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Services submitted successfully!')),
    );
    // Clear the list after submission
    setState(() {
      _servicesList.clear();
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
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
      body: Padding(
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
                    selectedCategory: _selectedCategory ?? CategoryModel.empty,
                    onSelectingCategory: _onCategoryChanged,
                  ),
                  SizedBox(height: 16),
                  // Service Name Text Field
                  NormalTextField(
                    textEditingController: _serviceNameController,
                    validatorFunction: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a service name';
                      }
                      return null;
                    },
                    hintText: "Enter service name",
                    labelText: "Service Name",
                  ),
                  SizedBox(height: 16),
                  // Rate Per Hour Text Field
                  NormalTextField(
                    textEditingController: _ratePerHourController,
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
                  final service = _servicesList[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(service['serviceName']),
                      subtitle: Text(
                        'Category: ${service['category']}\nRate: ₹${service['ratePerSlot']}/3 hours',
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _deleteService(index),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
