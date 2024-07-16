import 'package:flutter/material.dart ';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyProgressBar extends StatelessWidget {
   MyProgressBar({super.key, required this.percentWatched});
  double percentWatched = 0;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 15,
      percent: percentWatched,
      progressColor: Colors.grey,
      backgroundColor: Colors.grey[600],
    );
  }
}
