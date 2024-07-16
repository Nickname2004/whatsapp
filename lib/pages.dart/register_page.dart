import 'package:flutter/material.dart';
import 'package:whatsapp/Services/Auth/auth_service.dart';
import 'package:whatsapp/components/my_button.dart';
import 'package:whatsapp/components/my_textfield.dart';
import 'package:whatsapp/components/responsive_widget.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key, required this.onTap});

  //register method
  void register(BuildContext context) {
    // get Auth service
    final _auth = AuthService();
    //if the passwords match, create the user
    if (_passController.text == _confirmPassController.text) {
      try {
        _auth.signUpWithEmailPassword(
          _emailController.text,
          _passController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    // if the passwords don't match tell the user to fix it up
    else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text(
            'Please check your credentials!',
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
    }
  }

  //email and password controller

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ResponsiveWidget(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Greeting message

              Text(
                'Welcome to WhatsApp!',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              Text(
                'Get started by creating an account.',
                style: TextStyle(
                  fontSize: 13,
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

              const SizedBox(
                height: 10,
              ),

              //confirm password textfield

              MyTextfield(
                hintText: 'Confirm Password',
                obscureText: true,
                controller: _confirmPassController,
                padding: const EdgeInsets.symmetric(horizontal: 20),
              ),

              SizedBox(
                height: 10,
              ),

              //login button

              MyButton(
                text: 'Register',
                onTap: () => register(context),
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
                  Text('Already a member?'),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      ' Login now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
