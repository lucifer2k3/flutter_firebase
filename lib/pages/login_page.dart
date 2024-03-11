// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:testing/pages/home.dart';
import 'package:testing/pages/register_page.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
Map<String,dynamic>? _userData;

Future<UserCredential> signInFacebook() async {
    
    final LoginResult loginResult = await FacebookAuth.instance.login(permissions: ['email']);
    if (loginResult == LoginStatus.success){
      final userData = await FacebookAuth.instance.getUserData();
      _userData = userData;
      print("Đăng nhập thành công");
    }
    else {
      print(loginResult.message);
    }

    final OAuthCredential oAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);
    return FirebaseAuth.instance.signInWithCredential(oAuthCredential);
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
      backgroundColor: Color.fromARGB(247, 248, 248, 248),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              SizedBox(
                height: 130,
                width: 130,
                child: ClipRRect(
                  child: Image.asset(
                    'images/logos/google.png',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Đăng nhập',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Tên đăng nhập',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Mật khẩu',
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  try {
                    //Đăng nhập thành công ở đây

                    await _auth.signInWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    print("đăng nhập thành công");

                    showDialog(
                      // ignore: use_build_context_synchronously
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Thông báo'),
                          content: const Text(
                            'Đăng nhập thành công!',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_) => const Home(),
                                  ),
                                );
                              },
                              child: const Text('Ok'),
                            )
                          ],
                        );
                      },
                    );
                  } catch (e) {
                    //Đăng nhập thất bại ở đây

                    print('Đăng nhập thất bại!');
                    showDialog(
                      // ignore: use_build_context_synchronously
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Thông báo'),
                          content: const Text(
                            'Đăng nhập thất bại! Vui lòng kiểm tra lại tại khoản hoặc mật khẩu',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Ok'),
                            )
                          ],
                        );
                      },
                    );
                    print(e);
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(18),
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 8, 144, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'Hoặc tiếp tục với',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 65,
                      width: 65,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/logos/google.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {

                      signInFacebook();



                    },
                    child: Container(
                      height: 65,
                      width: 65,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/logos/facebook.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Chưa có tài khoản?',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => RegisterPage(),
                        ),
                      );
                    },
                    child: Text(
                      ' Đăng ký',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  
}
