import 'package:acadease/app/modules/home/views/home_view.dart';
import 'package:acadease/app/modules/signup/views/signup_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
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
      Get.off(() => HomeView());
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

  void dispose() {
    Get.delete<LoginController>();
    if (emailController != null) emailController.dispose();
    if (passwordController != null) passwordController.dispose();
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
      child: Form(
        key: _formKey,
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
                            "Login",
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
                              // Get.off(HomeView());
                              print('Going to login');
                              login();
                              if (_formKey.currentState!.validate()) {
                                print(emailController.text.toString());
                                print(passwordController.text.toString());
                                login();
                              }
                            },
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't Have an Account "),
                              TextButton(
                                onPressed: () {
                                  Get.off(SignupView());
                                },
                                child: Text(
                                  "Create Now",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
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
