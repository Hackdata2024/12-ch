import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePageView());
}

class ProfilePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0F5697),
          title: Center(child: Text('Profile', style: TextStyle(color: Colors.white)))
        ),
        body: ProfileBody(),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffC7D9EA),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: CircleAvatar(
              //  backgroundImage: NetworkImage(),
                radius: 60,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'harsh', // Replace with the user's name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 8),
            Text(
              'harsh12@email.com', // Replace with the user's email
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('123-456-7890'), // Replace with the user's phone number
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('City, Country'), // Replace with the user's location
            ),
            SizedBox(height: 200),
      
            ElevatedButton(

              onPressed: () {
                // Add logic to navigate to edit profile screen
                // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
              },
              style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0F5697)), // Change the color here
  ),
              child: Text('Edit Profile', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
