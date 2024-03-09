import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final _emailController = TextEditingController();
final _passwordController = TextEditingController();


void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid?await Firebase.initializeApp(
    options:const FirebaseOptions(
      apiKey: 'AIzaSyDu7wHlZjnTLbd3Id7T8VLvxLnDD91Dw90',
      appId: '1:422090467811:android:5ca626f54a37e5c1b498d6',
      messagingSenderId: '422090467811',
      projectId: 'time-counter-74a49')
  ):await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // Bọc LoginPage bằng MaterialApp
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Đăng nhập'),
      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration:const InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration:const InputDecoration(labelText: 'Mật khẩu'),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                
                try {
                  //Đăng nhập thành công ở đây


                  await _auth.signInWithEmailAndPassword (
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  print("đăng nhập thành công");

                  
                } catch (e) {
                  //Đăng nhập thất bại ở đây


                  print('Đăng nhập thất bại!');
                  print(e);
                }
              },
              child:const Text('Đăng nhập'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Chuyển đến trang đăng ký
              },
              child:const  Text('Đăng ký'),
            ),
          ],
        ),
      ),
    );
  }
}