import 'package:acadease/models/student_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../attendance/views/choose_class.dart';

class StudentHome extends StatefulWidget {
  StudentHome({super.key});

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
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
          // if (student['email'] == widget.email) {
          //   // print('working ');
          //   print("Present Days  " + student['days_present'].toString());
          //   print("Absent DAys  " + student['days_absent'].toString());
          //   isAbsent = student['days_absent'].toString();
          //   isPresent = student['days_present'].toString();
          //   isfounded = true;
          //   break;
          // }
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

  @override
  Widget build(BuildContext context) {
    void init() {
      _fetchStudents();
    }

    return Scaffold(
      drawer: const Drawer(
        surfaceTintColor: Colors.white,
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 45,
            ),
            Text(
              'Acad',
              style: TextStyle(
                  color: Color(0xffC7D9EA),
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
              width: 95,
            ),
            Icon(
              Icons.notifications_on,
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: const Color(0xff0F5697),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
        child: Column(
          children: [
            Container(
              height: 40,
              width: 382,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Center(
                child: Text(
                  'Important Notice',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 239,
              width: 382,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      height: 141,
                      width: 131,
                      decoration: BoxDecoration(
                        color: const Color(0xff00488A),
                        borderRadius: BorderRadius.circular(23),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '4',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 52,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Feb',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 52,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 30,
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Text(
                              "Total Present Days: 25",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Text(
                              "Total Absent Days: 5",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
                            child: Text(
                              'Total Attendance: 83.33 %',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Center(
                            child: Text(
                              'Total Leave Applied: 2',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 61,
              width: 382,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                  image: AssetImage("assets/hackdata.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // Get.to(ChooseClass());
                        _fetchStudents();
                      },
                      child: Container(
                        height: 120,
                        width: 112,
                        decoration: BoxDecoration(
                          color: const Color(0xff0F5697),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image(image: AssetImage("assets/Attendance.png")),
                            Text(
                              'ATTENDANCE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 112,
                      decoration: BoxDecoration(
                        color: const Color(0xff0F5697),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image(image: AssetImage("assets/Leaderboard.png")),
                          Text(
                            'LEADERBOARD',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 112,
                      decoration: BoxDecoration(
                        color: const Color(0xff0F5697),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 24,
                          ),
                          Image(image: AssetImage("assets/Bookmark.png")),
                          Text(
                            'RESOURCES',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 60,
                    ),
                    Container(
                      height: 120,
                      width: 112,
                      decoration: BoxDecoration(
                        color: const Color(0xff0F5697),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image(image: AssetImage("assets/Crowd.png")),
                          Text(
                            'COMMUNITY',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 112,
                      decoration: BoxDecoration(
                        color: const Color(0xff0F5697),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image(image: AssetImage("assets/Todo List.png")),
                          Text(
                            'ASSESSMENT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   // type: BottomNavigationBarType.shifting,
      //   // selectedFontSize: 10,
      //   // selectedIconTheme: const IconThemeData(color: Colors.white),
      //   // selectedItemColor: Colors.amberAccent,
      //   // selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      //   // unselectedIconTheme: const IconThemeData(
      //   //   color: Colors.deepOrangeAccent,
      //   // ),
      //   // unselectedItemColor: Colors.deepOrangeAccent,
      //   backgroundColor: const Color(0xff0F5697),
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //         color: Color(0xffffffff),
      //       ),
      //       label: 'Profile',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         color: Color(0xffffffff),
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.chat,
      //         color: Color(0xffffffff),
      //       ),
      //       label: 'Chats',
      //     ),
      //   ],
      // ),
    );
  }
}
