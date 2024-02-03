import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  const CommunityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget list(
      String title,
      String subtitle,
      String imagepath,
      String Url,
    ) {
      return InkWell(
        onTap: () {
          // ignore: deprecated_member_use
          launch(Url);
        },
        child: Card(
          color: Color(0xff0F5697),
          child: ListTile(
            contentPadding: EdgeInsets.all(3),
            leading: Container(
              height: 140,
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 44, 7, 255),
                radius: 40,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    imagepath,
                  ),
                ),
              ),
            ),
            title: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(subtitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500)),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffC7D9EA),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Center(
          child: Text(
            'Community',
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xff0F5697),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            list('CPP/JAVA/DSA-JIMS', 'Competitive Coding Group',
                'assets/cijIcon.jpg', 'https://web.whatsapp.com/'),
            list('Geeks For Geeks', 'Coding / Learning',
                'assets/gfg.jpg','https://t.me/geeksforgeeks_official'),
            list(
                'Leetcode', 'Competitive Coding', 'assets/images/leetcode.jpg','https://t.me/leetcode_discussion_group'),
            list('Flutter & Dart', 'Flutter Largest Community',
                'assets/flutter.jpg','https://t.me/fluttercameroon'),
            list(
                'Code Chef', 'Problem Curators', 'assets/codechef2.jpg','https://t.me/codechef_group'),
            list('Web-App Dev', 'Development Group',
                'assets/cijIcon.jpg','https://web.whatsapp.com/',),
            list('Machine Learning', 'Learn Machine Learning',
                'assets/ml.jpg','https://t.me/ml_world'),
            list('Networking', 'Study About Networking ',
                'assets/network.png',''),
            list('Coding News', 'Latest News About Coding',
                'assets/news.jpg','https://t.me/CodingNews'),
            list('Python', 'Python For AI', 'assets/python.jpg','https://t.me/pythonres'),
            list('React', 'Learn React', 'assets/React.jpg','https://t.me/reactjsresources'),
            list('Web Development', 'Learn Webdev', 'assets/webdev.jpg','https://t.me/web_development_learning'),
          ],
        ),
      ),
    );
  }
}
