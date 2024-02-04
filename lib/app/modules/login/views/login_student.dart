import 'package:acadease/app/modules/home/views/home_student.dart';
import 'package:acadease/app/modules/login/views/login_view.dart';
import 'package:acadease/app/modules/signup/views/signup_student.dart';
import 'package:acadease/operator/operator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../home/views/home_view.dart';

class LoginStudent extends StatefulWidget {
  const LoginStudent({super.key});

  @override
  State<LoginStudent> createState() => _LoginStudentState();
}

class _LoginStudentState extends State<LoginStudent> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  void login() async {
    try {
      // Show loading indicator
      // ...

      var result = await _auth.signInWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString(),
      );
      print('Login successful: $result');
      // Get.off(() => StudentHome(email: emailController.text.toString(),));
      Get.off(Operator(
        email: emailController.text.toString(),
      ));
    } catch (e) {
      // Hide loading indicator
      // ...

      if (e is FirebaseAuthException) {
        print('Firebase Authentication Error: ${e.message}');
      } else {
        print('Unexpected Error: $e');
      }
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
        body: Form(
          key: _formKey,
          child: Stack(
            children: [
              Container(
                height: 90,
                width: 200,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, top: 48),
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
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
                        controller: emailController,
                      ),
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 12),
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
                        controller: passwordController,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10, top: 40),
                    //   child: CustomButton(
                    //       title: 'LOGIN',
                    //       onTap: () {
                    //         Get.to(OnboardingView());
                    //       }),
                    // )
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
                                  minimumSize: Size.fromHeight(40),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {
                                login();
                              },
                              child: Center(
                                child: Text('Login'),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an Account"),
                              TextButton(
                                  onPressed: () {
                                    Get.off(SignupStudent());
                                  },
                                  child: Text('create Now'))
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
      ),
    );
  }
}
