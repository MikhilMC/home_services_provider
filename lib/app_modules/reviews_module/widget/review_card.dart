import 'package:flutter/material.dart';
import 'package:home_services_provider/app_modules/reviews_module/model/review.dart';
import 'package:home_services_provider/app_modules/reviews_module/widget/star_rating.dart';

class ReviewCard extends StatelessWidget {
  final Review review;

  const ReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Name and Rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  review.userName,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                StarRating(rating: review.rating),
              ],
            ),

            const SizedBox(height: 8),

            // Feedback
            Text(
              review.feedback,
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 8),

            // Date
            Text(
              _formatDate(review.date),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }
}
