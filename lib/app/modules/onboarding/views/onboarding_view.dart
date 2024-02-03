import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC7D9EA),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                    SizedBox(
              width: 90,
            ),
            Text(
              'Acad',
              style: TextStyle(
                  color: Color(0xff0F5697),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'ease',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 80,
            ),
             CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xff0F5697),
               child: Text('skip',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins')),
             ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),

          Image.asset('assets/1B.png'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
            Text(
              'Check Your ',
              style: TextStyle(
                  color: Color(0xff0F5697),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Attendance',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
                ],
              ),
          Text('Lets Work Together To',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          Text('turn our ideas into',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          Text('reality through idea',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          Text('power of code',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          SizedBox(
            height: 50,
          ),
        
        ],
      ),
    );
  }
}
