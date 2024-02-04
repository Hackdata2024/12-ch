import 'package:acadease/widgets/grid.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/resources_controller.dart';

class ResourcesViewstudent extends GetView<ResourcesController> {
  const ResourcesViewstudent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true,backgroundColor: Color(0xfff0F5697),title:  Padding(
        padding: const EdgeInsets.only(right:50),
        child: Center(child: Text("Resources",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
      ),leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back,size: 30,color: Colors.white,)),),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      
                      height: 20,
                      width: 80,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                      //  child: --> Drop Down Menu
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      
                      height: 20,
                      width: 80,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                       child: Text('Semester'),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      
                      height: 20,
                      width: 80,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                      child: Text('Section',style: TextStyle(color:Colors.blue.shade900),),
                    ),
                  )
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xfff0F5697)),
            ),
          ),
          SizedBox(height: 10,),
           Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(color: Color(0xfffC7D9EA),borderRadius: BorderRadius.circular(14)),
                child: GridCreator(),
              ),
            ),
          ),
          SizedBox(height: 52,),
        ],
      ) ,
      );
  }
}
