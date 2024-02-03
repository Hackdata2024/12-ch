import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_choice_controller.dart';

class UserChoiceView extends GetView<UserChoiceController> {
  const UserChoiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff0F5697),
        body: Column(
      
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 12,),
            Text("Welcome to",style: TextStyle(color: Colors.white,fontSize: 20),),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Acad",style: TextStyle(color: Color.fromARGB(255, 87, 135, 207),fontSize: 35),),
              Text("ease",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 35),),

            ],

          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  children: [
                    Image.asset('assests/images/Teacher.png',fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Faculty',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              height: 250,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade200,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
          SizedBox(height:10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Column(
                  children: [
                    Image.asset('assests/images/Student Male.png',fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text('Student',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              height: 250,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blueAccent.shade200,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),
          
          
          
          
          ],
        ),
      ),
    );
  }
}
