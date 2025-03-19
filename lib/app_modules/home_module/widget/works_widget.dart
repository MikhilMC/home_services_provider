import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/home_module/bloc/booked_services_bloc/booked_services_bloc.dart';
import 'package:home_services_provider/app_modules/home_module/widget/booking_card.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';

class WorksWidget extends StatefulWidget {
  const WorksWidget({super.key});

  @override
  State<WorksWidget> createState() => _WorksWidgetState();
}

class _WorksWidgetState extends State<WorksWidget> {
  @override
  void initState() {
    super.initState();
    context
        .read<BookedServicesBloc>()
        .add(BookedServicesEvent.bookedServicesFetched());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookedServicesBloc, BookedServicesState>(
      builder: (context, state) {
        if (state is BookedServicesError) {
          return CustomErrorWidget(
            errorMessage: state.errorMessage,
          );
        }

        if (state is! BookedServicesSuccess) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.firstColor,
            ),
          );
        }

        final bookedServices = state.bookedServices;

        return CustomScrollView(
          slivers: [
            // Booked Works Section
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Booked Works',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: BookingCard(
                    service: bookedServices.bookedServices[index],
                  ),
                ),
                childCount: bookedServices.bookedServices.length,
              ),
            ),

            // Ongoing Works Section
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Ongoing Works',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: BookingCard(
                    service: bookedServices.ongoingServices[index],
                  ),
                ),
                childCount: bookedServices.ongoingServices.length,
              ),
            ),
          ],
        );
      },
    );
  }
}
