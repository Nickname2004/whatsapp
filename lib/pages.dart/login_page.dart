import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/Services/Auth/auth_service.dart';
import 'package:whatsapp/components/my_button.dart';
import 'package:whatsapp/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key, required this.onTap});

  //login method
  void login(BuildContext context) async {
    //get auth service
    final authservice = AuthService();

//try to login
    try {
      await authservice.signInWithEmailPassword(
          _emailController.text, _passController.text);
    }

//catch errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  //email and password controller

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //welcome back message

            Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //email textfield

            MyTextfield(
              hintText: 'Email',
              obscureText: false,
              controller: _emailController,
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),

            const SizedBox(
              height: 10,
            ),

            //password textfield

            MyTextfield(
              hintText: 'Password',
              obscureText: true,
              controller: _passController,
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),

            SizedBox(
              height: 10,
            ),

            //login button

            MyButton(
              text: 'Login',
              onTap: () => login(context),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primary,
            ),

            SizedBox(
              height: 10,
            ),

            //registration

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?'),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    ' Register now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
