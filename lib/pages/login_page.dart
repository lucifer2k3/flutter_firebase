// ignore: must_be_immutable
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:testing/connection/conn.dart';
import 'package:testing/pages/register_page.dart';

// Innitialize
final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();

//text controller
final _emailController = TextEditingController();
final _passwordController = TextEditingController();

String userGoogleName = "";

Future<void> _signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    final User? user = userCredential.user;

    final String uid = user!.uid;
    final String? email = user.email;
    final String? displayName = user.displayName;
    final String? photoUrl = user.photoURL;
    userGoogleName = displayName.toString();
    print(displayName);
    // Use the user object for further operations or navigate to a new screen.
  } catch (e) {
    print(e.toString());
  }
}

Future<void> _signOut() async {
  await _googleSignIn.signOut();
  await _auth.signOut();
}

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xd9f6c9a8),
              Color(0xffc3c3df),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 150),
                SizedBox(
                  height: 130,
                  width: 130,
                  child: ClipRRect(
                    child: Image.asset(
                      'images/logos/google.png',
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Chào mừng đến với Thi THPT QG',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20, right: 20),
                //   child: TextField(
                //     controller: _passwordController,
                //     decoration: InputDecoration(
                //       enabledBorder: OutlineInputBorder(
                //         borderSide: BorderSide(color: Colors.white),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderSide: BorderSide(
                //           color: Colors.white,
                //         ),
                //       ),
                //       fillColor: Colors.white,
                //       filled: true,
                //       hintText: 'Mật khẩu',
                //     ),
                //     obscureText: true,
                //   ),
                // ),
                // const SizedBox(height: 10),
                // Padding(
                //   padding: const EdgeInsets.only(right: 20.0, left: 20),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: const [
                //       Text(
                //         'Quên mật khẩu?',
                //         style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w400,
                //           fontStyle: FontStyle.italic,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    //dang nhap google
                    _signInWithGoogle();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset('images/logos/google.png'),
                        ),
                        Text(
                          'Tiếp tục với Google',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // const SizedBox(height: 40),
                // Text(
                //   'Hoặc tiếp tục với',
                //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                // ),
                // const SizedBox(height: 10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     GestureDetector(
                //       onTap: () {
                //         //dang nhap google
                //         _signInWithGoogle();

                //         //xu ly su kien sau phan dang nhap
                //       },
                //       child: Container(
                //         height: 65,
                //         width: 65,
                //         padding: EdgeInsets.all(10),
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(10),
                //           child: Image.asset(
                //             'images/logos/google.png',
                //           ),
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: 16),
                //     GestureDetector(
                //       onTap: () {},
                //       child: Container(
                //         height: 65,
                //         width: 65,
                //         padding: EdgeInsets.all(10),
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.circular(10),
                //           child: Image.asset(
                //             'images/logos/facebook.png',
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 50),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       'Chưa có tài khoản?',
                //       style:
                //           TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                //     ),
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.of(context).pushReplacement(
                //           MaterialPageRoute(
                //             builder: (_) => RegisterPage(),
                //           ),
                //         );
                //       },
                //       child: Text(
                //         ' Đăng ký',
                //         style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w500,
                //           color: Colors.blue,
                //         ),
                //       ),
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
