import 'package:get/get.dart';

import '../controllers/resources_controller.dart';

class ResourcesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResourcesController>(
      () => ResourcesController(),
    );
  }
}
