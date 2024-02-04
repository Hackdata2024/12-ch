import 'package:acadease/widgets/lib/app/modules/face_detector_gallery/views/face_detector_gallery_view.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC7D9EA),
      appBar: AppBar(
        backgroundColor: Color(0xfff0F5697),
        title: const Text('Ai Attendance',style: TextStyle(color: Colors.white,fontSize: 24),),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(
        builder: (context) {
          return Stack(
            children: [
              SizedBox(width: Get.width,
              height: Get.height,
              child: controller.isInitializedCamera==true?
              CameraPreview(controller.cameraController):null,),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      controller.initializeCamera();
                    //  controller.logger.w("i am logger");
                    }, child: const Text("Capture Face")),
                    ElevatedButton(onPressed: (){
                    //  controller.initializeCamera();
                    Get.to(()=>FaceDetectorGalleryView());
                    }, child: const Text("Detect with Gallery")),
                  ],
                ),
              )

            ],
          );
        }
      ),
    );
  }
}
