import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/home_module/bloc/provider_services_bloc/provider_services_bloc.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({super.key});

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
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
          return SliverToBoxAdapter(
            child: CustomErrorWidget(
              errorMessage: state.errorMessage,
            ),
          );
        }

        if (state is! ProviderServicesSuccess) {
          return SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.firstColor,
              ),
            ),
          );
        }

        final providerServices = state.providerServices;
        return SliverList.list(
          children: [
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
                subtitle: Text(providerServices.category.category),
                subtitleTextStyle: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Sub Services Section
            Text(
              "Sub Services & Rates",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 5),
            // List of Services with Rates
            ...providerServices.services.map((subService) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    subService.serviceName,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  trailing: Text(
                    "₹${subService.price}/3 hrs",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              );
            }),
          ],
        );
      },
    );
  }
}
