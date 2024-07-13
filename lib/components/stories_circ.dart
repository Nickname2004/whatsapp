import 'package:flutter/material.dart';

class StoriesCirc extends StatelessWidget {
  const StoriesCirc({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const  BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
