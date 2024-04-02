// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:testing/connection/conn.dart';
import 'package:testing/pages/home_exercise_page.dart';
import 'package:testing/pages/login_page.dart';
import 'package:testing/pages/setting_user_page.dart';
import 'package:testing/pages/trang_giaobt.dart';
import 'package:firebase_auth/firebase_auth.dart';

connection conn = new connection();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
        key: _scaffoldKey,
        drawer: NavBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          width: widthScreen,
          height: heightScreen,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/backgroundhome.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: _openDrawer,
                    icon: const Icon(Icons.menu),
                    style: const ButtonStyle(
                      iconSize: MaterialStatePropertyAll(34),
                      iconColor: MaterialStatePropertyAll(Colors.white),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserPage(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(6000),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'images/japan.jpg',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                          child: const Column(
                            children: [
                              Text(
                                'START',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                '03/09/2023',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 8, 20, 8),
                          child: const Column(
                            children: [
                              Text(
                                'END',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                '02/09/2024',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          Expanded(
                            child: DottedLine(
                              dashLength: 10,
                              dashGapLength: 8,
                              lineThickness: 2,
                              dashColor: Colors.white,
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.flight,
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                          Expanded(
                            child: DottedLine(
                              dashLength: 10,
                              dashGapLength: 8,
                              lineThickness: 2,
                              dashColor: Colors.white,
                            ),
                          ),
                          Container(
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '12:00 AM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '12:00 AM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Center(
                      child: Text(
                        'Còn 360 ngày 20 giờ 59 phút 59 giây',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 150),
                    Column(
                      children: [
                        Text(
                          'Học, học nữa, học mãi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '- Lenin -',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      transform: Matrix4.translationValues(_isOpen ? 0 : 1, 0, 0),
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            GestureDetector(
              onTap: () {
                print('user');
              },
              child: UserAccountsDrawerHeader(
                accountName: Text('$Fullname'),
                accountEmail: Text(''),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'images/japan.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: NetworkImage(
                  //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6B_LLggKx4kl06zrQhoFLFYDCZFpEzf8LRg&usqp=CAU',
                  //   ),
                  //   fit: BoxFit.cover,
                  // ),
                  color: Colors.blue,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Color(0xFF5C43BD),
              ),
              title: Text(
                'Trang chủ',
                style: TextStyle(
                    fontFamily: 'Be Vietnam Pro', fontWeight: FontWeight.w600),
              ),
              onTap: null,
            ),
            ListTile(
              leading: Icon(
                Icons.auto_stories,
                color: Color(0xFF5C43BD),
              ),
              title: Text(
                'Làm bài kiểm tra',
                style: TextStyle(
                    fontFamily: 'Be Vietnam Pro', fontWeight: FontWeight.w600),
              ),
              onTap: () {
                conn.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeExercise(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Color(0xFF5C43BD),
              ),
              title: Text(
                'Cài đặt',
                style: TextStyle(
                    fontFamily: 'Be Vietnam Pro', fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.workspace_premium,
                color: Color(0xFF5C43BD),
              ),
              title: Text(
                '$authstate',
                style: TextStyle(
                    fontFamily: 'Be Vietnam Pro', fontWeight: FontWeight.w600),
              ),
              onTap: () {
                if (authstate == "Đăng xuất") {
                  Fullname = "Đăng nhập";
                  conn.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }
              },
            ),
            // const ListTile(
            //   leading: Icon(
            //     Icons.info,
            //     color: Color(0xFF5C43BD),
            //   ),
            //   title: Text(
            //     'Về chúng tôi',
            //     style: TextStyle(
            //         fontFamily: 'Be Vietnam Pro', fontWeight: FontWeight.w600),
            //   ),
            //   onTap: null,
            // ),
            // const ListTile(
            //   leading: Icon(
            //     Icons.rate_review,
            //     color: Color(0xFF5C43BD),
            //   ),
            //   title: Text(
            //     'Đánh giá',
            //     style: TextStyle(
            //         fontFamily: 'Be Vietnam Pro', fontWeight: FontWeight.w600),
            //   ),
            //   onTap: null,
            // ),
          ],
        ),
      ),
    );
  }

  void toggleDrawer() {
    setState(() {
      _isOpen = !_isOpen;
    });
  }
}
