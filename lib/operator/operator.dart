import 'package:acadease/app/modules/home/views/home_view.dart';
import 'package:acadease/app/modules/profile_page/views/profile_page_view.dart';
import 'package:acadease/chats.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Operator extends StatefulWidget {
  const Operator({super.key});

  @override
  State<Operator> createState() => _OperatorState();
}

class _OperatorState extends State<Operator> {
   int counter = 0;
  final Bottom_Nav = [
    HomeView(),
    Chats(),
    ProfilePageView(),
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
            BottomNavigationBarItem(
              icon: Icon(
                Icons.boy_rounded,
                color: Colors.white,
              ),
              label: 'Profile',
            )
          ]),
    );
  }
}
