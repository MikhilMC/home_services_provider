class Review {
  final String userName;
  final int rating; // Rating out of 5
  final String feedback;
  final DateTime date;

  Review({
    required this.userName,
    required this.rating,
    required this.feedback,
    required this.date,
  });
}
