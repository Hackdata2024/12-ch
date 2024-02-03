import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ManualAttendance extends StatefulWidget {
  const ManualAttendance({super.key});

  @override
  State<ManualAttendance> createState() => _ManualAttendanceState();
}

class _ManualAttendanceState extends State<ManualAttendance> {
  String studentsCourse = 'Computer Science';
  String studentsSection = 'A';
  String studentSemester = '1st';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffb0F5697),
        title: Text('Manual Attendance'),
      ),
      body: Column(
        children: [
          Text('Fill The Data to get The Student Data'),
          Container(
            child: Row(
              children: [
                DropdownButton2<String>(
                  // padding: EdgeInsets.only(left: 10),
                  underline: Container(
                    color: Colors.black,
                  ),
                  alignment: Alignment.center,
                  buttonStyleData: ButtonStyleData(width: 230),
                  value: studentsCourse,
                  // icon: Icon(Icons.arrow_drop_down),
                  // iconSize: 24,
                  // elevation: 16,
                  // style: TextStyle(
                  //   color: Colors.grey,
                  // ),
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      // You can set other text style properties here
                    ),
                  ),
                  // underline: Container(color: backgroundColor),
                  onChanged: (newValue) {
                    setState(() {
                      studentsCourse = newValue!;
                    });
                  },
                  items: [
                    DropdownMenuItem<String>(
                      value: 'Computer Science',
                      child: Text(
                        'Computer Science',
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Electrical Engineering',
                      child: Text('Electrical Engineering'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
