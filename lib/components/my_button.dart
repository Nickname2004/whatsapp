import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.margin,
    required this.padding,
    required this.borderRadius,
    required this.color,
  });
  final String text;
  final void Function()? onTap;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
