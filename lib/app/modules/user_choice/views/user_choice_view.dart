import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_choice_controller.dart';

class UserChoiceView extends GetView<UserChoiceController> {
  const UserChoiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffC7D9EA),
        body: Column(
      
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text("Welcome to",style: TextStyle(color: Color(0xfff0F5697),fontSize: 20,fontWeight: FontWeight.w500),),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Acad",style: TextStyle(color: Color(0xfff0F5697),fontSize: 35,fontWeight: FontWeight.w800),),
              Text("ease",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 35,fontWeight: FontWeight.w800),),

            ],

          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: InkWell(
                
                  onTap: (){},
                  child: Column(
                    children: [
                      Image.asset('assets/Teacher.png',fit: BoxFit.cover,),
                      SizedBox(height: 5,),
                      Text('Faculty',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              height: 250,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xfff0F5697),
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
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Column(
                    children: [
                      Image.asset('assets/Student Male.png',fit: BoxFit.cover,),
                      SizedBox(height: 5,),
                      Text('Student',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              height: 250,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xfff0F5697),
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
