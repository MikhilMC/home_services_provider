import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_services_provider/app_constants/app_colors.dart';
import 'package:home_services_provider/app_modules/reviews_module/bloc/user_reviews_bloc.dart';
import 'package:home_services_provider/app_modules/reviews_module/widget/review_card.dart';
import 'package:home_services_provider/app_widgets/custom_error_widget.dart';
import 'package:home_services_provider/app_widgets/empty_list.dart';

class ReviewListPage extends StatefulWidget {
  const ReviewListPage({super.key});

  @override
  State<ReviewListPage> createState() => _ReviewListPageState();
}

class _ReviewListPageState extends State<ReviewListPage> {
  @override
  void initState() {
    super.initState();
    context.read<UserReviewsBloc>().add(UserReviewsEvent.userReviewsFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Reviews")),
      body: BlocBuilder<UserReviewsBloc, UserReviewsState>(
        builder: (context, state) {
          if (state is UserReviewsError) {
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          }

          if (state is UserReviewsEmpty) {
            return EmptyList(
              message: "No user reviews available",
            );
          }

          if (state is! UserReviewsSuccess) {
            return Center(
              child: CircularProgressIndicator(
                color: AppColors.firstColor,
              ),
            );
          }

          final userReviews = state.userReviews;
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: userReviews.length,
            itemBuilder: (context, index) {
              final review = userReviews[index];
              return ReviewCard(review: review);
            },
          );
        },
      ),
    );
  }
}
