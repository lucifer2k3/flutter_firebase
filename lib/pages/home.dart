import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;

    final dayValues = ['31556926', '525600', '8760', '365', '52', '12', '1'];
    final dayItem = ['Giây', 'Phút', 'Giờ', 'Ngày', 'Tuần', 'Tháng', 'Năm'];

    final pages = List.generate(
      7,
      (index) => containerDayCountMethod(
        sizeWidth,
        dayItem[index],
        dayValues[index],
      ),
    );

    return Scaffold(
      body: Container(
        height: sizeHeight,
        width: sizeWidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 0.3, 0.6, 0.8, 0.98],
            colors: [
              Color(0xff497DEE),
              Color(0xff3E6ACA),
              Color(0xff26417C),
              Color(0xff15357A),
              Color(0xff062C81),
            ],
          ),
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(16, 60, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 36,
                  color: Colors.white,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: const Text(
                  'KỲ THI THPT QUỐC GIA',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              // Container(
              //   alignment: Alignment.center,
              //   margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
              //   child: Container(
              //     width: sizeWidth * 0.6,
              //     height: sizeWidth * 0.6,
              //     padding: const EdgeInsets.all(10),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(1000),
              //       border: const Border(
              //         top: BorderSide(
              //           color: Colors.white,
              //           width: 6,
              //           style: BorderStyle.solid,
              //         ),
              //         right: BorderSide(
              //           color: Colors.white,
              //           width: 6,
              //           style: BorderStyle.solid,
              //         ),
              //         bottom: BorderSide(
              //           color: Colors.white,
              //           width: 6,
              //           style: BorderStyle.solid,
              //         ),
              //       ),
              //     ),
              //     child: DottedBorder(
              //       color: Colors.white,
              //       padding: const EdgeInsets.all(0),
              //       strokeWidth: 2,
              //       borderType: BorderType.RRect,
              //       radius: const Radius.circular(10000),
              //       dashPattern: [16, 5],
              //       child: Container(
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(100),
              //         ),
              //         alignment: Alignment.center,
              //         child: const Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             Text(
              //               '31536000',
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 30,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //             Text(
              //               'Ngày',
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 24,
              //                 fontWeight: FontWeight.w500,
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: sizeWidth * 0.65,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: pages.length,
                  effect: const WormEffect(
                    dotHeight: 10,
                    dotWidth: 18,
                    dotColor: Colors.white,
                    type: WormType.thinUnderground,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                alignment: Alignment.center,
                child: const Column(
                  children: [
                    Text(
                      'Học, học nữa, học mãi',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '- Lenin -',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container containerDayCountMethod(
      double sizeWidth, String day, String numberCount) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(40, 30, 40, 20),
      child: Container(
        width: sizeWidth * 0.6,
        height: sizeWidth * 0.6,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          border: const Border(
            top: BorderSide(
              color: Colors.white,
              width: 6,
              style: BorderStyle.solid,
            ),
            right: BorderSide(
              color: Colors.white,
              width: 6,
              style: BorderStyle.solid,
            ),
            bottom: BorderSide(
              color: Colors.white,
              width: 6,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: DottedBorder(
          color: Colors.white,
          padding: const EdgeInsets.all(0),
          strokeWidth: 2,
          borderType: BorderType.RRect,
          radius: const Radius.circular(10000),
          dashPattern: const [16, 5],
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numberCount,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  day,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
