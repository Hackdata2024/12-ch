import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_choice_controller.dart';

class UserChoiceView extends GetView<UserChoiceController> {
  const UserChoiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserChoiceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UserChoiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
