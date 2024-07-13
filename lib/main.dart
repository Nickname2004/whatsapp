import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/pages.dart/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAn6eJaDaDBEi10ey6FMLEI9INYdQ-desA",
            authDomain: "whatsapp-97169.firebaseapp.com",
            projectId: "whatsapp-97169",
            storageBucket: "whatsapp-97169.appspot.com",
            messagingSenderId: "66084333578",
            appId: "1:66084333578:web:a66b6fff37950e714c57f3"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
