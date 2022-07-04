// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Flex Demon - CodeFresher"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            boxDeco(
              image: "banner_2022_flutter",
              text2: "Thực chiến dự án app mobile 2022",
              text: "Lập trình Flutter",
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 3,
              width: 370,
              decoration: BoxDecoration(color: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Lập Trình Android \n",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.black),
                              children: [
                            TextSpan(
                                text: "Java + Kotlin",
                                style: TextStyle(fontSize: 14))
                          ])),
                    ],
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/2.jpg"))),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 3,
              width: 370,
              decoration: BoxDecoration(color: Colors.green),
            ),
            SizedBox(
              height: 50,
            ),
            boxDeco(
                text: "Lập trình Java cơ bản",
                text2: "Cho người mới bắt đầu",
                image: "3")
          ],
        ),
      ),
    );
  }
}

class boxDeco extends StatelessWidget {
  const boxDeco({
    Key? key,
    required this.text,
    required this.text2,
    required this.image,
  }) : super(key: key);
  final String text;
  final String text2;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/$image.jpg"))),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                        text: "$text\n",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: [
                      TextSpan(text: "$text2", style: TextStyle(fontSize: 16))
                    ])),
              ],
            ),
          )
        ],
      ),
    );
  }
}
