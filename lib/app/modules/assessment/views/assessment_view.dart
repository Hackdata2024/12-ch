import 'package:acadease/app/modules/assessment/views/startQuiz.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/assessment_controller.dart';

class AssessmentView extends GetView<AssessmentController> {
  const AssessmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC7D9EA),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: 35,
              color: Colors.white,
            )),
        title: const Text(
          'Assessment',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff0F5697),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/as1.png',
                        scale: 1.2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Assignment',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xfff0F5697),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: InkWell(
                  onTap: () {
                    Get.to(StartQuizScreen());
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/as2.png',
                        scale: 1.2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Quiz',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xfff0F5697),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
    );
  }
}
