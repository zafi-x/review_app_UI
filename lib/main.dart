import 'package:flutter/material.dart';
import 'package:rewview_app/review.dart';
// import 'package:flutter_practice/currency_converter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ReviewPage1());
  }
}
