import 'package:flutter/material.dart';
import 'package:home_services_provider/app_modules/reviews_module/model/review.dart';
import 'package:home_services_provider/app_modules/reviews_module/widget/review_card.dart';

class ReviewListPage extends StatefulWidget {
  const ReviewListPage({super.key});

  @override
  State<ReviewListPage> createState() => _ReviewListPageState();
}

class _ReviewListPageState extends State<ReviewListPage> {
  final List<Review> reviews = [
    Review(
      userName: "John Doe",
      rating: 5,
      feedback: "Great work! The service was excellent and on time.",
      date: DateTime(2023, 10, 15),
    ),
    Review(
      userName: "Jane Smith",
      rating: 4,
      feedback: "Good job, but there was a slight delay.",
      date: DateTime(2023, 10, 10),
    ),
    Review(
      userName: "Alice Johnson",
      rating: 3,
      feedback: "Average service. Could be better.",
      date: DateTime(2023, 10, 5),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Reviews")),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return ReviewCard(review: review);
        },
      ),
    );
  }
}
