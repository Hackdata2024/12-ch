import 'package:acadease/models/leaderboards_model.dart';
import 'package:acadease/widgets/leaderhelping.dart';
import 'package:flutter/material.dart';
class LeaderHelping extends StatelessWidget {
  final List<LeaderBoardsModel> leaderModel;
  int index;
  LeaderHelping({Key? key, required this.leaderModel, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Student's Name
            Text(
              leaderModel[index].name,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            // Student's Total_points
            Text(
              leaderModel[index].totalPoints.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
