import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC7D9EA),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                    SizedBox(
              width: 90,
            ),
            Text(
              'Acad',
              style: TextStyle(
                  color: Color(0xff0F5697),
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
              width: 80,
            ),
             CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xff0F5697),
               child: Text('skip',
                style: TextStyle(
                   color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'poppins')),
             ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          Image.asset('assets/3B.png'),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
            Text(
              'Take Your ',
              style: TextStyle(
                  color: Color(0xff0F5697),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Performance',
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
                ],
              ),
          const Text('Implementing a robust performance',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          const Text('tracking feature to monitor and',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          const Text('analyze system efficiency.',
              style: TextStyle(fontSize: 20, fontFamily: 'poppins')),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              CircleAvatar(
                radius: 10,
              ),
               SizedBox(width: 5,),
              CircleAvatar(
                radius: 10,
                child: CircleAvatar(
                  backgroundColor: Color(0xff0F5697),
                  radius: 8,
                ),
              ),
              SizedBox(width: 5,),
              CircleAvatar(
                radius: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
            Container(
              width: 360,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );;
  }
}