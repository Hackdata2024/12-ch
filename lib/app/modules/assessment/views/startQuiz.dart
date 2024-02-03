import 'dart:io';
import 'package:acadease/app/modules/assessment/views/const.dart';
import 'package:acadease/app/modules/assessment/views/playQuizScreen.dart';
import 'package:flutter/material.dart';
// import 'package:quiz_app_f4f/const.dart';
// import 'package:quiz_app_f4f/playQuizScreen.dart';

class StartQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Start Quiz",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: foregroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Quiz App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayQuizScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff0F5697),
              ),
              child: Text("Start Quiz",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}