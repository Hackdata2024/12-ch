import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/assessment_controller.dart';

class AssessmentView extends GetView<AssessmentController> {
  const AssessmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AssessmentView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AssessmentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
