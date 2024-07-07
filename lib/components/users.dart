import 'package:flutter/material.dart';

class users extends StatelessWidget {
  const users({
    super.key,
    required this.child,
    // required this.imagepath,
  });
  final String child;
  // final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: () {},
        splashColor: Colors.transparent.withOpacity(0.5),
        child: Ink(
          decoration: BoxDecoration(color: Colors.transparent),
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            child: Center(
              child: Text(
                child,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
