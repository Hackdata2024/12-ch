import 'package:acadease/app/modules/home/views/home_student.dart';
import 'package:acadease/app/modules/home/views/home_view.dart';
import 'package:acadease/app/modules/profile_page/views/profile_page_view.dart';
import 'package:acadease/chats.dart';
import 'package:acadease/models/student_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Operator extends StatefulWidget {
  late String email;
  Operator({super.key, required this.email});

  @override
  State<Operator> createState() => _OperatorState();
}

class _OperatorState extends State<Operator> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Student> filteredStudents = [];
  List<Map<String, dynamic>> studentsList = [];
  bool isfounded = false;
  late String isPresent = '';
  late String isAbsent = '';
  double h = 0.0;
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
          if (student['email'] == widget.email) {
            // print('working ');
            print("Present Days  " + student['days_present'].toString());
            print("Absent DAys  " + student['days_absent'].toString());
            isAbsent = student['days_absent'].toString();
            isPresent = student['days_present'].toString();
            isfounded = true;
            break;
          }
        }
        print(studentsList.length);
        if (isfounded == true) {
          break;
        }
      }
      // Get.to(AttendanceView(), arguments: filteredStudents);
    } catch (e) {
      // Handle any errors that may occur during the process
      print('Error fetching students: $e');
    }
  }

  int counter = 0;

  final Bottom_Nav = [
    // StudentHome(isPresent: isAbsent.toString(),),
    // StudentHome(isPresent: isPresent),
    StudentHome(),
    Chats(),
    // ProfilePageView(),
  ];
  Ontapped(int index) {
    setState(() {
      counter = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bottom_Nav[counter],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: counter,
          onTap: (value) => Ontapped(value),
          iconSize: 25,
          // unselectedLabelStyle: TextStyle(color: Colors.white),
          selectedFontSize: 15,
          selectedItemColor: Colors.blue.shade200,
          unselectedItemColor: Colors.white,
          unselectedFontSize: 12,
          backgroundColor: Color(0xfff0F5697),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_sharp,
                color: Colors.white,
              ),
              label: 'Ai Chat',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.boy_rounded,
            //     color: Colors.white,
            //   ),
            //   label: 'Profile',
            // )
          ]),
    );
  }
}
