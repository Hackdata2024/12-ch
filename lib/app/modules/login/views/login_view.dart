

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Color(0xfff0F5697),
        image: DecorationImage(
          image: AssetImage('assests/images/Login.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 200),
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //TExt field for email

                      Column(children: [
                        Container(
                          width: 309,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 309,
                          height: 40,
                          child: TextField(
                            autofocus: true,
                            decoration: InputDecoration(
                                // focusColor: Colors.blue.shade900,
                                
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                )),
                          ),
                        )
                      ]),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forget password ?",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 251, 251, 251),
                                      fontSize: 16),
                                ))
                          ],
                        ),
                      ),

                      //Google login button with icon

                      Row(
                        children: [
                          Container(
                              height: 35,
                              child: Image.asset(
                                'assests/images/search.png',
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              height: 35,
                              child: Image.asset(
                                'assests/images/facebook.png',
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                              height: 35,
                              child: Image.asset(
                                'assests/images/apple.png',
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 142,
                      ),

                      Row(
                        children: [
                          Text(
                            "New Here?",
                            style: TextStyle(fontSize: 15,color: Colors.white),
                          ),
                          Text(
                            " Register",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
                          ),
                          SizedBox(
                            width: 108,
                          ),
                          Container(
                            height: 60,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(8)),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
