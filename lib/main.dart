import 'package:coupon/Homepage.dart';
import 'package:coupon/samples/vertical_coupon_example_1.dart';
import 'package:coupon/samples/vertical_coupon_example_2.dart';
import 'package:flutter/material.dart';
import 'samples/horizontal_coupon_example_1.dart';
import 'samples/horizontal_coupon_example_2.dart';
import 'samples/vertical_coupon_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'うーしゃんの肩もみもみの券',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('うーしゃんの肩もみもみの券')),
      body: const Padding(
        padding: EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              VerticalCouponExample(),
              SizedBox(height: 10),
              VerticalCouponExample1(),
              SizedBox(height: 10),
              VerticalCouponExample2(),
            ],
          ),
        ),
      ),
    );
  }
}
