import 'package:acadease/app/modules/assessment/views/assessment_view.dart';
import 'package:acadease/widgets/grid.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/resources_controller.dart';

class ResourcesView extends GetView<ResourcesController> {
  const ResourcesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xfff0F5697),
        title: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Center(
              child: Text(
            "Resources",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ),
        leading: IconButton(
            onPressed: () {
              Get.to(AssessmentView());
            },
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      height: 20,
                      child: Center(child: Row(
                        
                        children: [
                          paddingAll(8),
                        Text('Branch'),
                        Icon(Icons.arrow_downward ,size: 17,)
                      ],)),
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      //  child: --> Drop Down Menu
                      
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      //  child: --> Drop Down Menu
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      //  child: --> Drop Down Menu
                    ),
                  )
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xfff0F5697)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0xfffC7D9EA),
                    borderRadius: BorderRadius.circular(14)),
                child: GridCreator(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'ADD',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xfff0F5697),
                          borderRadius: BorderRadius.circular(12)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'EDIT',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xfff0F5697),
                          borderRadius: BorderRadius.circular(12)),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
