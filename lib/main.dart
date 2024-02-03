import 'package:acadease/app/modules/attendance/views/attendance_view.dart';
import 'package:acadease/app/modules/attendance/views/choose_class.dart';
import 'package:acadease/app/modules/login/views/login_view.dart';
import 'package:acadease/app/modules/user_choice/views/user_choice_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      // initialRoute: AppPages.INITIAL,
      home: UserChoiceView(),
      getPages: AppPages.routes,
      // routes: {
      //   'UserChoiceView' : (context) => UserChoiceView(),
      // },
    ),
  );
}
