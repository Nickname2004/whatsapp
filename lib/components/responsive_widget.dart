import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget child;

  const ResponsiveWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 300) {
          // Phone layout
          return child;
        } else {
          // Browser or larger screen layout
          return Center(
            child: SizedBox(
              width: 400,
              child: child,
            ),
          );
        }
      },
    );
  }
}
