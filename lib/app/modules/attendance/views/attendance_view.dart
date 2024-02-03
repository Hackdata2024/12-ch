import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/attendance_controller.dart';

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AttendanceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AttendanceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
