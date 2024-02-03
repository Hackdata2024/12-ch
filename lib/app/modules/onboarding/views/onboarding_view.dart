import 'package:acadease/app/modules/user_choice/views/user_choice_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC7D9EA),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
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
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'poppins')),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset('assets/1B.png'),
          const SizedBox(
            height: 20,
          ),
          const Row(
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
          const Text('Integrated attendance system ',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          const Text('employing both manual input and ',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          const Text('AI recognition for efficient and ',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          const Text(' accurate tracking',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 10,
                child: CircleAvatar(
                  backgroundColor: Color(0xff0F5697),
                  radius: 8,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 10,
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Get.to(UserChoiceView());
            },
            child: Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    // fontFamily: GoogleFonts.poppins().fontFamily,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
