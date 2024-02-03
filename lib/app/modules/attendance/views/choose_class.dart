import 'package:acadease/app/modules/attendance/views/attendance_view.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseClass extends StatefulWidget {
  const ChooseClass({super.key});

  @override
  State<ChooseClass> createState() => _ChooseClassState();
}

class _ChooseClassState extends State<ChooseClass> {
  String choosecourse = 'Computer Science';
  String choosesection = 'A';
  String semester = '1st';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset('assets/attendace.jpg'),
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
              border: Border.all(color: Colors.grey), // Set border color
              borderRadius:
                  BorderRadius.circular(6.0), // Set border radius if desired
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
                  value: 'Mechnical Enginerring',
                  child: Text('Electrical Engineering'),
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
              border: Border.all(color: Colors.grey), // Set border color
              borderRadius:
                  BorderRadius.circular(6.0), // Set border radius if desired
            ),
            child: DropdownButton2<String>(
              // padding: EdgeInsets.only(left: 10),
              underline: Container(
                color: Colors.black,
              ),
              alignment: Alignment.center,
              // buttonStyleData: ButtonStyleData(width: 200),
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
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfffb0F5697)),
                onPressed: () {
                  Get.to(AttendanceView());
                },
                child: Center(
                  child: Text('Take Attendance'),
                )),
          )
        ],
      )),
    );
  }
}
