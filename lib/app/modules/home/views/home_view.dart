import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        surfaceTintColor: Colors.white,
      ),
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
              width: 95,
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
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 239,
              width: 382,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
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
                          Text(
                            '3',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 52,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Feb',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 52,
                                fontWeight: FontWeight.w500),
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
                                  fontWeight: FontWeight.w500),
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
                                  fontWeight: FontWeight.w500),
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
                                  fontWeight: FontWeight.w500),
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
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
             Container(
              height: 61,
              width: 382,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Center(
                child: Text(
                  'ADS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  children: [
                     Container(
              height: 110,
              width: 106,
              decoration: BoxDecoration(
                color: const Color(0xff0F5697),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  Image(image: AssetImage("")),
                  Text(
                  'ADS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                ],
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
