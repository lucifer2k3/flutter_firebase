// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
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
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(34),
                        iconColor: MaterialStatePropertyAll(Colors.white),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.settings),
                      style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(34),
                        iconColor: MaterialStatePropertyAll(Colors.white),
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
          ),
        ),
        // Positioned(
        //     top: 380,
        //     bottom: 0,
        //     left: 0,
        //     right: 0,
        //     child: Container(
        //       padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        //       decoration: const BoxDecoration(
        //           //color: Color(0xFFF2F5FA),
        //           borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(30),
        //             topRight: Radius.circular(30),
        //           ),
        //           gradient: LinearGradient(
        //             begin: Alignment.topCenter,
        //             end: Alignment.bottomCenter,
        //             colors: [
        //               Color(0xd9f6c9a8),
        //               Color(0xffc3c3df),
        //             ],
        //           )),
        //       child: SingleChildScrollView(
        //         scrollDirection: Axis.vertical,
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Container(
        //               width: widthScreen,
        //               padding: EdgeInsets.only(bottom: 10),
        //               decoration: BoxDecoration(
        //                 border: Border(
        //                   bottom: BorderSide(
        //                     color: Color.fromARGB(255, 182, 115, 56),
        //                     width: 2,
        //                   ),
        //                 ),
        //               ),
        //               child: Text(
        //                 'Sky Airline',
        //                 style: TextStyle(
        //                     fontSize: 18, fontWeight: FontWeight.w700),
        //               ),
        //             ),
        //             Container(
        //               margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Column(
        //                     children: [
        //                       Text(
        //                         'Passenger',
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.w600,
        //                           color: Color.fromARGB(186, 56, 56, 56),
        //                         ),
        //                       ),
        //                       Text(
        //                         'Tina Wong Po Po',
        //                         style: TextStyle(
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.w600,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   Column(
        //                     children: [
        //                       Text(
        //                         'Date',
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.w500,
        //                           color: Color.fromARGB(186, 56, 56, 56),
        //                         ),
        //                       ),
        //                       Text(
        //                         '06/06/2019',
        //                         style: TextStyle(
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.w500,
        //                         ),
        //                       ),
        //                     ],
        //                   )
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Column(
        //                     children: [
        //                       Text(
        //                         'Flight',
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.w600,
        //                           color: Color.fromARGB(186, 56, 56, 56),
        //                         ),
        //                       ),
        //                       Text(
        //                         'AA1234',
        //                         style: TextStyle(
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.w600,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   Column(
        //                     children: [
        //                       Text(
        //                         'Gate',
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.w600,
        //                           color: Color.fromARGB(186, 56, 56, 56),
        //                         ),
        //                       ),
        //                       Text(
        //                         '6A',
        //                         style: TextStyle(
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.w600,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   Column(
        //                     children: [
        //                       Text(
        //                         'Seat',
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.w500,
        //                           color: Color.fromARGB(186, 56, 56, 56),
        //                         ),
        //                       ),
        //                       Text(
        //                         '37',
        //                         style: TextStyle(
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.w500,
        //                         ),
        //                       ),
        //                     ],
        //                   )
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Column(
        //                     children: [
        //                       Text(
        //                         'Boarding',
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.w600,
        //                           color: Color.fromARGB(186, 56, 56, 56),
        //                         ),
        //                       ),
        //                       Text(
        //                         '5:10 AM',
        //                         style: TextStyle(
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.w600,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   Column(
        //                     children: [
        //                       Text(
        //                         'Departs',
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.w600,
        //                           color: Color.fromARGB(186, 56, 56, 56),
        //                         ),
        //                       ),
        //                       Text(
        //                         '5:30 AM',
        //                         style: TextStyle(
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.w600,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   Column(
        //                     children: [
        //                       Text(
        //                         'Arrives',
        //                         style: TextStyle(
        //                           fontSize: 15,
        //                           fontWeight: FontWeight.w500,
        //                           color: Color.fromARGB(186, 56, 56, 56),
        //                         ),
        //                       ),
        //                       Text(
        //                         '7:50 AM',
        //                         style: TextStyle(
        //                           fontSize: 18,
        //                           fontWeight: FontWeight.w500,
        //                         ),
        //                       ),
        //                     ],
        //                   )
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        //               width: widthScreen,
        //               child: ElevatedButton(
        //                   onPressed: () {},
        //                   style: ButtonStyle(
        //                     padding: MaterialStateProperty.all<EdgeInsets>(
        //                       const EdgeInsets.fromLTRB(60, 14, 60, 14),
        //                     ),
        //                     foregroundColor:
        //                         MaterialStateProperty.all(Colors.white),
        //                     backgroundColor: MaterialStateProperty.all(
        //                         Color.fromARGB(255, 250, 250, 250)),
        //                     shape: MaterialStateProperty.all<
        //                         RoundedRectangleBorder>(
        //                       RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(16),
        //                       ),
        //                     ),
        //                   ),
        //                   child: Text(
        //                     'Continue',
        //                     style: const TextStyle(
        //                       fontSize: 16,
        //                       color: Colors.black,
        //                     ),
        //                   )),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ))
      ],
    ));
  }
}
