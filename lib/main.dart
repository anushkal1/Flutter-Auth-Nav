import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/firebase_options.dart';
import 'package:namer_app/screens/login_screen.dart';

// Authentication code tutorial: https://medium.com/google-developer-experts/firebase-authentication-flutter-80e8f00338ac
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: const LoginScreen(),
    );
  }
}