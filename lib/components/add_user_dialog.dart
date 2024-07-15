import 'package:flutter/material.dart';
import 'package:whatsapp/components/my_button.dart';
import 'package:whatsapp/components/my_textfield.dart';

class userDialog extends StatelessWidget {
  userDialog(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey,
      content: Container(
        height: 120,
        child: Column(
          children: [
            //Get user input
            MyTextfield(
              hintText: 'Enter Name',
              obscureText: false,
              controller: controller,
              padding: const EdgeInsets.only(top: 10),
            ),
            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: 'Cancel',
                  onTap: onCancel,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  padding: EdgeInsets.all(10),
                  borderRadius: BorderRadius.circular(2),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                MyButton(
                  text: 'Save',
                  onTap: onSave,
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  padding: EdgeInsets.all(10),
                  borderRadius: BorderRadius.circular(2),
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
