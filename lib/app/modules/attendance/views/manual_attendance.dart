import 'package:acadease/app/modules/attendance/views/attendance_complete.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../models/student_model.dart';

class ManualAttendance extends StatefulWidget {
  final List<Student> studentList;

  ManualAttendance({Key? key, required this.studentList}) : super(key: key);

  @override
  State<ManualAttendance> createState() => _ManualAttendanceState();
}

class _ManualAttendanceState extends State<ManualAttendance> {
  final firestore = FirebaseFirestore.instance;
  // Future<void> updateAttendancePresent(
  //     String student_enrollment, int attendanceValue) async {
  //   try {
  //     await firestore.collection('students').doc(student_enrollment).update({
  //       'days_present': attendanceValue + 1,
  //     });
  //     print('Attendance updated successfully');
  //   } catch (e) {
  //     print('Error updating attendance: $e');
  //   }
  // }
  // Future<void> updateDaysPresent(String studentEnrollment) async {
  //   try {
  //     await firestore.collection('students').doc(student.id).set({
  //       'days_present': FieldValue.increment(1),
  //     }, SetOptions(merge: true));
  //     print('Days Present updated successfully');
  //   } catch (e) {
  //     print('Error updating Days Present: $e');
  //   }
  // }
  // Future<void> _updateAttendance() async {
  //   for (var student in widget.studentList) {
  //     // Create a new document for today's attendance
  //     await firestore
  //         .collection('students')
  //         .doc(student.id)
  //         .collection('attendance')
  //         .add({
  //       'isPresent': student.isPresent,
  //     });
  //   }
  // }
  Future<void> updateDaysPresent(String enrollment) async {
    try {
      await firestore.collection('students')
        ..doc(enrollment).update({
          'days_present': FieldValue.increment(1),
        });
      print('Days Present updated successfully');
    } catch (e) {
      print('Error updating Days Present: $e');
    }
  }

  Future<void> updateDaysAbsent(String enrollment) async {
    try {
      await firestore.collection('students')
        ..doc(enrollment).update({
          'days_absent': FieldValue.increment(1),
        });
      print('Days Present updated successfully');
    } catch (e) {
      print('Error updating Days Present: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        backgroundColor: Color(0xfffb0F5697),
        title: Text('Manual Attendance'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Other widgets can be added here

            // Expanded ListView.builder
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.studentList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        tileColor: widget.studentList[index].isPresent
                            ? Colors.green
                            : Colors.red,
                        leading: Text(
                          widget.studentList[index].roll_no,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        title: Text(
                          widget.studentList[index].name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        onTap: () {
                          setState(() {
                            widget.studentList[index].isPresent =
                                !widget.studentList[index].isPresent;

                            if (widget.studentList[index].isPresent) {
                              print(widget.studentList[index].roll_no);
                              print(widget.studentList[index].present_days + 1);
                              updateDaysPresent(
                                  widget.studentList[index].roll_no);
                              // updateAttendancePresent(
                              //     widget.studentList[index].roll_no,
                              //     widget.studentList[index].present_days + 1);
                              // updateDaysPresent(widget.studentList[index].uid);
                            } else {
                              updateDaysAbsent(
                                  widget.studentList[index].roll_no);
                            }
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),

            // Submit button
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Get.off(AttendanceComplete());
          },
          label: Text('Submit')),
    );
  }
}
