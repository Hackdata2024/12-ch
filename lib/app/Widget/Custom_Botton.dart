import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final onTap;
  final Color color;

  const CustomButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.color = const Color(0xff0F5697)});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Bounce(
          duration: const Duration(milliseconds: 300),
          onPressed: onTap,
          child: Container(
            height: 40,
            width: 160,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(
                    color: color != const Color(0xff1B1B1B)
                        ? color.withOpacity(00.1)
                        : const Color(0x4D000000)),
                borderRadius: BorderRadius.circular(22),
                color: color,
                boxShadow: [
                  BoxShadow(
                      color: color != const Color(0xff1B1B1B)
                          ? color.withOpacity(00.1)
                          : const Color(0x66000000),
                      offset: const Offset(4, 4),
                      blurRadius: 8)
                ]),
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 17.5,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
