import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/resources_controller.dart';

class ResourcesView extends GetView<ResourcesController> {
  const ResourcesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResourcesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ResourcesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
