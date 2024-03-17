// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ExercisesQuestion extends StatelessWidget {
  const ExercisesQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          size: 28,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text(
          'Bài kiểm tra số 1',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Icon(
              Icons.favorite_outline,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        height: sizeHeight,
        width: sizeWidth,
        color: Color.fromARGB(255, 242, 242, 242),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: questionNumberMethod(Colors.blue, 1, Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: questionNumberMethod(Colors.white, 2, Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: questionNumberMethod(Colors.white, 3, Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: questionNumberMethod(Colors.white, 4, Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: questionNumberMethod(Colors.white, 5, Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: questionNumberMethod(Colors.white, 6, Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: questionNumberMethod(Colors.white, 7, Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: questionNumberMethod(Colors.white, 8, Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: questionNumberMethod(Colors.white, 9, Colors.blue),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child:
                          questionNumberMethod(Colors.white, 10, Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              SizedBox(height: 10),
              Container(
                width: sizeWidth,
                padding: EdgeInsets.all(20),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Câu 1. ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'Ai hỏi mà bộ trưởng trả lời? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: answerMethod(
                      sizeWidth,
                      'A. ',
                      'Ai hoi ma bo truong tra loi',
                      Colors.green,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: answerMethod(
                      sizeWidth,
                      'B. ',
                      'Ai hoi ma bo truong tra loi',
                      Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: answerMethod(
                      sizeWidth,
                      'C. ',
                      'Ai hoi ma bo truong tra loi',
                      Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: answerMethod(
                      sizeWidth,
                      'D. ',
                      'Ai hoi ma bo truong tra loi',
                      Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.fromLTRB(40, 12, 40, 12),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: Text(
                    'Nộp bài',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Container answerMethod(double sizeWidth, String titleAnswer,
      String contentAnswer, Color borderColor) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      width: sizeWidth,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: titleAnswer,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: contentAnswer,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container questionNumberMethod(
      Color backgroundColor, int number, Color numberColor) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.blue,
          width: 1.5,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        number.toString(),
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: numberColor,
        ),
      ),
    );
  }
}
