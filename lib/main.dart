import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testing/firebase_options.dart';
import 'package:testing/pages/exercises_question.dart';
import 'package:testing/pages/home_page.dart';
import 'package:testing/pages/login_page.dart';
import 'package:testing/pages/register_page.dart';
import 'package:testing/pages/result_question.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testing/pages/setting_user_page.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final _emailController = TextEditingController();
final _passwordController = TextEditingController();

final questquery = FirebaseFirestore.instance.collection("/Quizzles/mon_hoc/toan/d1/question");
final ansquery = FirebaseFirestore.instance.collection("/Quizzles/mon_hoc/toan/d1/ans");

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      Fullname = "Đăng nhập";
      authstate = "Đăng nhập";
    } else {
      Fullname = user.displayName!.toString();
      authstate = "Đăng xuất";
    }
  });

  // get data

  // get data

//   final docs1 = await questquery.get();
//   final docs2 = await ansquery.get();

//   for (final doc in docs1.docs) {
//   final data = doc.data();
//   print(data['quest']);
// }

// for (final doc in docs2.docs) {
//   final data = doc.data();
//   print(data['a']);
//   print(data['b']);

//   print(data['c']);

//   print(data['d']);
//   print(data['true']);

// }
  runApp(MyApp());

  // Khóa xoay dọc
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
