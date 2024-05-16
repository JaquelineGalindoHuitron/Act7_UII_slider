import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({Key? key}) : super(key: key);

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  final myItems = [
    Image.asset('assets/images/img1.jpeg'),
    Image.asset('assets/images/img2.jpg'),
    Image.asset('assets/images/img3.jpg'),
    Image.asset('assets/images/img4.jpg'),
    Image.asset('assets/images/img5.jpg'),
    Image.asset('assets/images/img6.jpg'),
  ];
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcabcc9),
      appBar: AppBar(
        title: const Text('Spa Center'),
        centerTitle: true,
        elevation: 8,
        backgroundColor: Color(0xff458295),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: 300,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                  autoPlayInterval: const Duration(seconds: 30),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  }),
              items: myItems,
            ),
            AnimatedSmoothIndicator(
              activeIndex: myCurrentIndex,
              count: myItems.length,
              effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 10,
                  dotColor: Colors.grey.shade900,
                  paintStyle: PaintingStyle.fill),
            ),
          ],
        ),
      ),
    );
  }
}
