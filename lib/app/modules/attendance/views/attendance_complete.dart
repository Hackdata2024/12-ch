import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AttendanceComplete extends StatelessWidget {
  const AttendanceComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/completed.png',
          width: 200,
        ),
      ),
    );
  }
}
