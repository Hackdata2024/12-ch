import 'package:acadease/app/modules/attendance/views/manual_attendance.dart';
import 'package:acadease/models/student_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/attendance_controller.dart';

class AttendanceView extends GetView<AttendanceController> {
  const AttendanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Student> students = Get.arguments as List<Student>;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfffb0F5697),
          title: const Text('Attendace'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xfffb0F5697),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/aiAttendance.jpg',
                            height: 200,
                          ),
                          Text(
                            'AI Attendance',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    print(students.isEmpty);
                    Get.off(ManualAttendance(
                      studentList: students,
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xfffb0F5697),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/manualAttendance.jpg',
                              height: 200,
                            ),
                            Text(
                              'Manual Attendance',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
