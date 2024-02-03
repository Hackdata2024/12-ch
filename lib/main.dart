import 'package:acadease/app/modules/user_choice/views/user_choice_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      // initialRoute: 'UserChoiceView',
      home: UserChoiceView(),
      getPages: AppPages.routes,
      // routes: {
      //   'UserChoiceView' : (context) => UserChoiceView(),
      // },
    ),
  );
}
