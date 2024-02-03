import 'package:acadease/app/modules/login/views/login_student.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupStudent extends StatefulWidget {
  const SignupStudent({super.key});

  @override
  State<SignupStudent> createState() => _SignupStudentState();
}

class _SignupStudentState extends State<SignupStudent> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _courseController = TextEditingController();
  final TextEditingController _enrollmentController = TextEditingController();
  final TextEditingController _sectionController = TextEditingController();
  final TextEditingController _semesterController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String choosecourse = 'Computer Science';
  String choosesection = 'A';
  String choosesemester = '1st';

  Future<void> _createAccount() async {
    try {
      print(_emailController.text.toString());
      print(_nameController.text.toString());
      print(choosecourse);
      print(choosesection);
      print(choosesemester);
      print(_enrollmentController.text.toString());
      print(_passwordController.text.toString());
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );

      // If account creation is successful, store student details in Firestore
      await _firestore
          .collection('students')
          .doc(userCredential.user!.uid)
          .set({
        'name': _nameController.text,
        'email': _emailController.text,
        'student_course': choosecourse,
        'student_section': choosesection,
        'student_semester': choosesemester,
        'student_enrollment': _enrollmentController.text
        // Add other student details as needed
      });

      // Navigate to the student's dashboard or home screen
      print('Student account created: ${userCredential.user?.email}');
    } catch (e) {
      // Handle account creation errors
      print('Student account creation failed: $e');
      // Show an alert or error message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: 90,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 48),
                child: Row(
                  children: [
                    Text(
                      'Acad',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 32,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'ease',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 180,
                      left: 10,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Welcome Student",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins'),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Sign in to Continue",
                          style: TextStyle(
                              color: const Color(0xff0066FF),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'poppins'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text(
                      "Please Enter Email",
                      style: TextStyle(
                          color: const Color(0xff545454),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        hintText: 'Email',
                        hoverColor: const Color(0xffFF5757),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                              color: const Color(0xffFF5757), width: 2.0),
                        ),
                      ),
                      controller: _emailController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(
                      "Please Enter Your Name",
                      style: TextStyle(
                          color: const Color(0xff545454),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        hintText: 'Enter Your Name',
                        hoverColor: const Color(0xffFF5757),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                              color: const Color(0xffFF5757), width: 2.0),
                        ),
                      ),
                      controller: _nameController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text(
                      "Please Enter Roll No",
                      style: TextStyle(
                          color: const Color(0xff545454),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        hintText: 'Your Roll No',
                        hoverColor: const Color(0xffFF5757),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                              color: const Color(0xffFF5757), width: 2.0),
                        ),
                      ),
                      controller: _enrollmentController,
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 180),
                  //   child: Text(
                  //     "Please Confirm Your Passsword",
                  //     style: TextStyle(
                  //         color: const Color(0xff545454),
                  //         fontSize: 9,
                  //         fontWeight: FontWeight.w500,
                  //         fontFamily: 'poppins'),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: 30,
                  //     right: 30,
                  //   ),
                  //   child: TextField(
                  //     obscureText: true,
                  //     keyboardType: TextInputType.visiblePassword,
                  //     decoration: InputDecoration(
                  //       contentPadding:
                  //           EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  //       hintText: 'Confirm Your Password',
                  //       hoverColor: const Color(0xffFF5757),
                  //       fillColor: Colors.white,
                  //       filled: true,
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(22),
                  //         borderSide: BorderSide(
                  //             color: const Color(0xffFF5757), width: 2.0),
                  //       ),
                  //     ),
                  //     controller: TextEditingController(),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 10, top: 40),
                  //   child: CustomButton(
                  //       title: 'LOGIN',
                  //       onTap: () {
                  //         Get.to(OnboardingView());
                  //       }),
                  // )
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
                      border:
                          Border.all(color: Colors.grey), // Set border color
                      borderRadius: BorderRadius.circular(
                          6.0), // Set border radius if desired
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
                      border:
                          Border.all(color: Colors.grey), // Set border color
                      borderRadius: BorderRadius.circular(
                          6.0), // Set border radius if desired
                    ),
                    child: DropdownButton2<String>(
                      // padding: EdgeInsets.only(left: 10),
                      underline: Container(
                        color: Colors.black,
                      ),
                      alignment: Alignment.center,
                      buttonStyleData: ButtonStyleData(width: 200),
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
                      border:
                          Border.all(color: Colors.grey), // Set border color
                      borderRadius: BorderRadius.circular(
                          6.0), // Set border radius if desired
                    ),
                    child: DropdownButton2<String>(
                      // padding: EdgeInsets.only(left: 10),
                      underline: Container(
                        color: Colors.black,
                      ),
                      alignment: Alignment.center,
                      buttonStyleData: ButtonStyleData(width: 200),
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
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(
                      "Please Enter Passsword",
                      style: TextStyle(
                          color: const Color(0xff545454),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'poppins'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        hintText: 'Password',
                        hoverColor: const Color(0xffFF5757),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                              color: const Color(0xffFF5757), width: 2.0),
                        ),
                      ),
                      controller: _passwordController,
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xfff0F5697),
                                minimumSize: Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            onPressed: () {
                              _createAccount();
                            },
                            child: Center(
                              child: Text('Sign Up',style:TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18,),),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already Have an Account"),
                            TextButton(
                                onPressed: () {
                                  Get.off(LoginStudent());
                                },
                                child: Text('login'))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
