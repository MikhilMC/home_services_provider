import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/home_module/bloc/provider_services_bloc/provider_services_bloc.dart';
import 'package:home_services_provider/app_modules/home_module/widget/profile_header.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<ProviderServicesBloc>()
        .add(ProviderServicesEvent.providerServicesFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProviderServicesBloc, ProviderServicesState>(
      builder: (context, state) {
        if (state is ProviderServicesError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is! ProviderServicesSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final providerServices = state.providerServices;
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header
              ProfileHeader(),
              const SizedBox(height: 20),

              // Category Section
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: const Icon(Icons.category, color: Colors.blue),
                  title: const Text("Service Category"),
                  titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  subtitle:
                      Text(providerServices.services[0].category.category),
                  subtitleTextStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Sub Services Section
              Text("Sub Services & Rates",
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 5),

              // List of Services with Rates
              ...providerServices.services.map((service) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(
                      service.service.serviceName,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    trailing: Text(
                      "₹${service.price}/3 hrs",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
