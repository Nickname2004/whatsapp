import 'package:flutter/material.dart';
import 'package:whatsapp/components/progress_bar.dart';

class MyStoryBar extends StatelessWidget {
  MyStoryBar({super.key, required this.percentWatched});

  final List<double> percentWatched;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 50,
      ),
      child: Row(
        children: percentWatched.map((percent) {
          return Expanded(
            child: MyProgressBar(
              percentWatched: percent,
            ),
          );
        }).toList(),
      ),
    );
  }
}
