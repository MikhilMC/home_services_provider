import 'dart:math';

class RandomGenerator {
  static List<double> generateRandomEarnings(int days, double min, double max) {
    Random random = Random();
    return List<double>.generate(
      days,
      (index) => min + random.nextDouble() * (max - min),
    )
        .map((e) => double.parse(e.toStringAsFixed(2)))
        .toList(); // To limit to 2 decimal places
  }
}
