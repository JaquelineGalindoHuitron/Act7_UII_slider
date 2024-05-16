import 'package:flutter/material.dart';
import 'package:galindo/pages/auto_image_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyImageSlider(),
      debugShowCheckedModeBanner: false,
    );
  }
}
