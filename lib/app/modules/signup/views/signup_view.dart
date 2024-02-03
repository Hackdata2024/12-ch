import 'package:acadease/app/modules/login/views/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  SignupView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void dispose() {
    Get.delete<SignupController>();
    emailController.dispose();
    passwordController.dispose();
  }

  Future<void> _createAccount() async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text,
      );

      // If account creation is successful, store teacher details in Firestore
      await _firestore
          .collection('teachers')
          .doc(userCredential.user!.uid)
          .set({
        'email': emailController.text,
        // Add other teacher details as needed
      });

      // Navigate to the teacher's dashboard or home screen
      print('Teacher account created: ${userCredential.user?.email}');
    } catch (e) {
      // Handle account creation errors
      print('Teacher account creation failed: $e');
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
        body: Form(
          key: _formKey,
          child: Stack(
            children: [
              Container(
                height: 70,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 48),
                  child: Row(
                    children: [
                      Text(
                        'Cod',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Grow',
                        style: TextStyle(
                            color: Color(0xffF5DF00),
                            fontSize: 22,
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
                            "Welcome teacher",
                            style: TextStyle(
                                color: Colors.yellow,
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
                      child: TextFormField(
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
                    //       contentPadding: EdgeInsets.symmetric(
                    //           vertical: 10, horizontal: 12),
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
                                // if (_formKey.currentState!.validate()) {
                                //           _auth
                                //               .createUserWithEmailAndPassword(
                                //             email:
                                //                 emailController.text.toString(),
                                //             password: passwordController.text
                                //                 .toString(),
                                //           )
                                //               .then((value) {
                                //             emailController.clear();
                                //             passwordController.clear();
                                //             // throw Exception('An error occurred');
                                //             return null;
                                //           }).onError((error, stackTrace) {
                                //           });
                                //         }
                                _createAccount();
                                print(emailController.text.toString());
                                print(passwordController.text.toString());
                              },
                              child: Center(
                                child: Text('Sign Up'),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already Have an Account"),
                              TextButton(
                                  onPressed: () {
                                    Get.off(LoginView());
                                  },
                                  child: Text('Login'))
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
