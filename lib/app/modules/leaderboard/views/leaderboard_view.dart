import 'package:acadease/app/modules/home/views/home_view.dart';
import 'package:acadease/models/leaderboards_model.dart';
import 'package:acadease/widgets/leaderboardscroll.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/leaderboard_controller.dart';

class LeaderboardView extends GetView<LeaderboardController> {
  const LeaderboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffC7D9EA),
      appBar: AppBar(
        leading: IconButton(onPressed:(){ Get.to(HomeView());}, icon: Icon(Icons.arrow_back,color: Colors.white,size:32)),
        backgroundColor: Color(0xfff1C7DD7),
        title: const Text(
          'LeaderBoards',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body:  Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: Column(
                    children: [
            SizedBox(height: 10,),
            //Leader design
                    //  Stack(
                    //    alignment: AlignmentDirectional.bottomEnd,
                    //    children: [
                    //     Image.asset('assets/pngegg(2).png'),
                    //     Positioned(
                    //       bottom: 0,




                          
                          // Container(
                          //            padding: EdgeInsets.all(12),
                          //            height: 200,
                          //            width: MediaQuery.of(context).size.width,
                          //            decoration: BoxDecoration(
                          //              color: Color(0xfff1C7DD7),
                          //              borderRadius: BorderRadius.circular(12)
                          //            ),
                          //                        ),
                        
                    
            //Rank list column ..
            SizedBox(height: 10,),
          

            //Leader design
                     Container(
                  child:  Leaderscroll(leaderModel: LeaderBoardsData),
            padding: EdgeInsets.all(12),
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xfff1C7DD7),
              borderRadius: BorderRadius.circular(12)
            ),
                     ),
            SizedBox(height: 10,),
            //row Button..
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 150,child: TextButton(onPressed: (){}, child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),),decoration: BoxDecoration(
                  color: Color(0xfff1C7DD7),
                  borderRadius: BorderRadius.circular(20)
                ),),
                Container(width: 150,child: TextButton(onPressed: (){}, child: Text('EDIT',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),),decoration: BoxDecoration(
                  color: Color(0xfff1C7DD7),
                  borderRadius: BorderRadius.circular(20)
                ),)
                
              ],
            )
                    ],
                  ),
          )),
    );
  }
}
