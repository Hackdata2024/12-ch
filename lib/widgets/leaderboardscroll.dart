import 'package:acadease/models/leaderboards_model.dart';
import 'package:acadease/widgets/leaderhelping.dart';
import 'package:flutter/material.dart';

class Leaderscroll extends StatelessWidget {
  final List<LeaderBoardsModel> leaderModel;
  Leaderscroll({Key? key, required this.leaderModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: leaderModel.length,
        itemBuilder: (context, index) => 
            LeaderHelping(leaderModel: leaderModel, index: index),
          
        
      
    );
  }
}
