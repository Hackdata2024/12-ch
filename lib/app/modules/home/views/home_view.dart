import 'package:acadease/app/modules/assessment/views/assessment_view.dart';
import 'package:acadease/app/modules/attendance/views/attendance_view.dart';
import 'package:acadease/app/modules/attendance/views/choose_class.dart';
import 'package:acadease/app/modules/community/views/community_view.dart';
import 'package:acadease/app/modules/leaderboard/views/leaderboard_view.dart';
import 'package:acadease/app/modules/profile_page/views/profile_page_view.dart';
import 'package:acadease/app/modules/resources/views/resources_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(
      //   surfaceTintColor: Colors.white,
      // ),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 45,
            ),
            Text(
              'Acad',
              style: TextStyle(
                color: Color(0xffC7D9EA),
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ease',
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Icon(
              Icons.notifications_on,
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: const Color(0xff0F5697),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
        child: Column(
          children: [
            Container(
              height: 40,
              width: 382,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Center(
                child: Text(
                  'Important Notice',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 239,
              width: 382,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 141,
                      width: 131,
                      decoration: BoxDecoration(
                        color: const Color(0xff00488A),
                        borderRadius: BorderRadius.circular(23),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '4',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Feb',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 30,
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Center(
                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Center(
                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Center(
                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Center(
                            child: Text(
                              '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Hack",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Image.asset('assets/hackdata.png'),
                  Text(
                    "Data",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(ChooseClass());
                      },
                      child: Container(
                        height: 120,
                        width: 112,
                        decoration: BoxDecoration(
                          color: const Color(0xff0F5697),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image(image: AssetImage("assets/Attendance.png")),
                            Text(
                              'ATTENDANCE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                      },
                      child: Container(
                        height: 120,
                        width: 112,
                        decoration: BoxDecoration(
                          color: const Color(0xff0F5697),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image(image: AssetImage("assets/Attendance.png")),
                            Text(
                              'ATTENDANCE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(LeaderboardView());
                      },
                      child: Container(
                        height: 120,
                        width: 112,
                        decoration: BoxDecoration(
                          color: const Color(0xff0F5697),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image(image: AssetImage("assets/Leaderboard.png")),
                            Text(
                              'LEADERBOARD',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(ResourcesView());
                      },
                      child: Container(
                        height: 120,
                        width: 112,
                        decoration: BoxDecoration(
                          color: const Color(0xff0F5697),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Image(image: AssetImage("assets/Bookmark.png")),
                            Text(
                              'RESOURCES',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 60,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(CommunityView());
                      },
                      child: Container(
                        height: 120,
                        width: 112,
                        decoration: BoxDecoration(
                          color: const Color(0xff0F5697),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image(image: AssetImage("assets/Crowd.png")),
                            Text(
                              'COMMUNITY',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(AssessmentView());
                      },
                      child: Container(
                        height: 120,
                        width: 112,
                        decoration: BoxDecoration(
                          color: const Color(0xff0F5697),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image(image: AssetImage("assets/Todo List.png")),
                            Text(
                              'ASSESSMENT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
