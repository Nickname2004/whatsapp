import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/Stories_stuff/stories.dart/story1.dart';
import 'package:whatsapp/Stories_stuff/stories.dart/story2.dart';
import 'package:whatsapp/Stories_stuff/stories.dart/story3.dart';
import 'package:whatsapp/Stories_stuff/stories.dart/story_bar.dart';

class storyPage extends StatefulWidget {
  const storyPage({super.key});

  @override
  State<storyPage> createState() => _storyPageState();
}

class _storyPageState extends State<storyPage> {
  int currentStoryIndex = 0;

//stories
  final List<Widget> myStories = [
    MyStory1(),
    MyStory2(),
    MyStory3(),
  ];

  List<double> percentWatched = [];

  @override
  void initState() {
    super.initState();

    // All the stories start at 0 because they haven't been watched
    for (int i = 0; i < myStories.length; i++) {
      percentWatched.add(0);
    }
    _startWatching();
  }

  void _startWatching() {
    Timer.periodic(
      Duration(milliseconds: 50),
      (timer) {
        setState(
          () {
            // only 0.01 as long as it's below 1
            if (percentWatched[currentStoryIndex] + 0.01 < 1) {
              percentWatched[currentStoryIndex] += 0.01;
            }
            // if adding 0.01 exceeds 1, set percentage to 1 and cancel timer
            else {
              percentWatched[currentStoryIndex] = 1;
              timer.cancel();

              // as long as there are other stories, go to them...
              if (currentStoryIndex < myStories.length - 1) {
                currentStoryIndex++;
                // restart stories timer
                _startWatching();
              }
              // if we are at the last story return to the updates page
              else {
                Navigator.pop(context);
              }
            }
          },
        );
      },
    );
  }

  void _onTapDown(TapDownDetails details) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;

    setState(() {
      // user taps on the left
      if (dx < screenWidth / 2) {
        // as long as it's not the first story
        if (currentStoryIndex > 0) {
          // set the current and the last story back to 0 %
          percentWatched[currentStoryIndex - 1] = 0;
          percentWatched[currentStoryIndex] = 0;

          // go back to the previous story
          currentStoryIndex--;
          _startWatching();
        }
      } else {
        // user taps on the right
        // as long as there are more stories
        if (currentStoryIndex < myStories.length - 1) {
          // finish current story
          percentWatched[currentStoryIndex] = 1;
          // move to next story
          currentStoryIndex++;
          _startWatching();
        } else {
          // move to the next story
          percentWatched[currentStoryIndex] = 1;
          Navigator.pop(context);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      child: Scaffold(
        body: Stack(
          children: [
            // Stories
            myStories[currentStoryIndex],
            // Progress bar
            MyStoryBar(
              percentWatched: percentWatched,
            ),
          ],
        ),
      ),
    );
  }
}
