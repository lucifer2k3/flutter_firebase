// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testing/connection/get_question.dart';
import 'package:testing/pages/exercise.dart';

class HomeExercise extends StatelessWidget {
  HomeExercise({super.key});
  @override
  Widget build(BuildContext context) {
    double mediaScreenWidth = MediaQuery.of(context).size.width;
    double mediaScreenHeight = MediaQuery.of(context).size.height;

    var size = MediaQuery.of(context).size;

    const double itemHeight = 80;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(size: 28, color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          'Làm bài kiểm tra',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.count(
          padding: const EdgeInsets.all(4),
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Exercise(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 208, 231, 229),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  'Toán học',
                  style: const TextStyle(
                    fontFamily: 'Be Vietnam Pro',
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 231, 229),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Văn học',
                style: const TextStyle(
                  fontFamily: 'Be Vietnam Pro',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 231, 229),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Vật lý',
                style: const TextStyle(
                  fontFamily: 'Be Vietnam Pro',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 231, 229),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Hóa học',
                style: const TextStyle(
                  fontFamily: 'Be Vietnam Pro',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 231, 229),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Sinh học',
                style: const TextStyle(
                  fontFamily: 'Be Vietnam Pro',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 231, 229),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Tin học',
                style: const TextStyle(
                  fontFamily: 'Be Vietnam Pro',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 231, 229),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                'Lập trình',
                style: const TextStyle(
                  fontFamily: 'Be Vietnam Pro',
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
