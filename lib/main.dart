import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testing/pages/exercises_question.dart';
import 'package:testing/pages/home_page.dart';
import 'package:testing/pages/login_page.dart';
import 'package:testing/pages/register_page.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final _emailController = TextEditingController();
final _passwordController = TextEditingController();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyDu7wHlZjnTLbd3Id7T8VLvxLnDD91Dw90',
            appId: '1:422090467811:android:5ca626f54a37e5c1b498d6',
            messagingSenderId: '422090467811',
            projectId: 'time-counter-74a49',
          ),
        )
      : await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Bọc LoginPage bằng MaterialApp
    );
  }
}
