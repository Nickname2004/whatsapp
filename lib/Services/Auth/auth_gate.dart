import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Services/Auth/login_or_register.dart';
import 'package:whatsapp/pages.dart/homepage.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //user logged in
        if (snapshot.hasData) {
          return const Homepage();
        }

        //user is NOT logged in
        else {
          return const LoginOrRegister();
        }
      },
    ));
  }
}
