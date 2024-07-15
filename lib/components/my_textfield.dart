import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  MyTextfield({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    required this.padding,
  });
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        obscureText: obscureText,
        controller: controller,
      ),
    );
  }
}
