import 'package:acadease/app/modules/assessment/views/assessment_view.dart';
import 'package:acadease/app/modules/attendance/views/attendance_view.dart';
import 'package:acadease/app/modules/attendance/views/choose_class.dart';
import 'package:acadease/app/modules/community/views/community_view.dart';
import 'package:acadease/app/modules/home/views/home_view.dart';
import 'package:acadease/app/modules/login/views/login_view.dart';
import 'package:acadease/app/modules/onboarding/views/onboarding2.dart';
import 'package:acadease/app/modules/onboarding/views/onboarding3.dart';
import 'package:acadease/app/modules/onboarding/views/onboarding_view.dart';
import 'package:acadease/app/modules/profile_page/views/profile_page_view.dart';
import 'package:acadease/app/modules/user_choice/views/user_choice_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      // initialRoute: AppPages.INITIAL,
      home: CommunityView(),
      getPages: AppPages.routes,
      // routes: {
      //   'UserChoiceView' : (context) => UserChoiceView(),
      // },
    ),
  );
}
