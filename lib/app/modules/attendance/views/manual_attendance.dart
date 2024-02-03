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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      tileColor: widget.studentList[index].isPresent
                          ? Colors.green
                          : Colors.red,
                      leading: Text(widget.studentList[index].roll_no),
                      title: Text(widget.studentList[index].name),
                      onTap: () {
                        setState(() {
                          widget.studentList[index].isPresent =
                              !widget.studentList[index].isPresent;
                          print(widget.studentList[index].isPresent);
                        });
                      },
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
          onPressed: () {}, label: Text('Submit')),
    );
  }
}
