import 'package:acadease/app/modules/attendance/views/attendance_view.dart';
import 'package:acadease/app/modules/attendance/views/manual_attendance.dart';
import 'package:acadease/models/student_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseClass extends StatefulWidget {
  const ChooseClass({super.key});

  @override
  State<ChooseClass> createState() => _ChooseClassState();
}

class _ChooseClassState extends State<ChooseClass> {
  String choosecourse = 'Computer Science';
  String choosesection = 'A';
  String choosesemester = '1st';
  List<Student> filteredStudents = [];
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Map<String, dynamic>> studentsList = [];
  // List<Map<String, dynamic>> filteredStudents = [];

  Future<void> _fetchStudents() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
          await _firestore.collection('students').get();

      // Clear the previous list
      studentsList.clear();
      filteredStudents.clear();

      // Add each student data to the list
      for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
        studentsList.add(doc.data());
        for (var student in studentsList) {
          if (student['student_course'] == choosecourse &&
              student['student_section'] == choosesection &&
              student['student_semester'] == choosesemester) {
            print('working ');
            print(student['name']);
            // filteredStudents.add(student);
            filteredStudents.add(Student(
              name: student['name'],
              course: student['student_course'],
              section: student['student_section'],
              semester: student['student_semester'],
              roll_no: student['student_enrollment'],
              isPresent: false,
              present_days: student['days_present'],
              absent_days: student['days_absent'],
            ));
          }
        }
        print(studentsList.length);
      }
      Get.to(AttendanceView(), arguments: filteredStudents);
    } catch (e) {
      // Handle any errors that may occur during the process
      print('Error fetching students: $e');
    }
  }

  @override
  void onInit() {
    super.initState();
    filteredStudents.clear();
    _fetchStudents();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
            Image.asset('assets/attendace.jpg'),
            Text(
              'Choose Your Class',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Set border color
                borderRadius:
                    BorderRadius.circular(6.0), // Set border radius if desired
              ),
              child: DropdownButton2<String>(
                // padding: EdgeInsets.only(left: 10),
                underline: Container(
                  color: Colors.black,
                ),
                alignment: Alignment.center,
                value: choosecourse,
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
                    choosecourse = newValue!;
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
                  DropdownMenuItem<String>(
                    value: 'Mechanical Enginerring',
                    child: Text('Mechanical Engineering'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Civil',
                    child: Text('Civil'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,

            ),
            Text(
              'Choose Section',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Set border color
                borderRadius:
                    BorderRadius.circular(6.0), // Set border radius if desired
              ),
              child: DropdownButton2<String>(
                // padding: EdgeInsets.only(left: 10),
                underline: Container(
                  padding: EdgeInsets.symmetric(horizontal: 120),
                  color: Colors.black,
                ),
                alignment: Alignment.center,
                // buttonStyleData: ButtonStyleData(width: 200),
                value: choosesection,
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
                    choosesection = newValue!;
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    value: 'A',
                    child: Text(
                      'A',
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'B',
                    child: Text('B'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'C',
                    child: Text('C'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'D',
                    child: Text('D'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Choose Semester',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Set border color
                borderRadius:
                    BorderRadius.circular(6.0), // Set border radius if desired
              ),
              child: DropdownButton2<String>(
                // padding: EdgeInsets.only(left: 10),
                underline: Container(
                  color: Colors.black,
                ),
                alignment: Alignment.center,
                // buttonStyleData: ButtonStyleData(width: 200),
                value: choosesemester,
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
                    choosesemester = newValue!;
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    value: '1st',
                    child: Text(
                      '1st',
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: '2nd',
                    child: Text('2nd'),
                  ),
                  DropdownMenuItem<String>(
                    value: '3rd',
                    child: Text('3rd'),
                  ),
                  DropdownMenuItem<String>(
                    value: '4th',
                    child: Text('4th'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfffb0F5697)),
                  onPressed: () {
                    setState(() {});
            
                    // for (var student in studentsList) {
                    //   if (student['course'] == choosecourse &&
                    //       student['section'] == choosesection &&
                    //       student['semester'] == choosesemester) {
                    //     print('working ');
                    //     print(student['name']);
                    //     filteredStudents.add(student);
                    //   }
                    // }
                    _fetchStudents();
                    // Get.to(AttendanceView(), arguments: filteredStudents);
                    // Get.to(ManualAttendance(student_list: filteredStudents));
                  },
                  child: Center(
                    child: Text('Take Attendance',style: TextStyle(color: Colors.white),),
                  )),
            )
                    ],
                  ),
          )),
    );
  }
}
