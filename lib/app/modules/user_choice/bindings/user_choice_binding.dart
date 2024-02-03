import 'package:get/get.dart';

import '../controllers/user_choice_controller.dart';

class UserChoiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserChoiceController>(
      () => UserChoiceController(),
    );
  }
}
