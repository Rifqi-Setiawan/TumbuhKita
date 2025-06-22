import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forum_tenaga_kesehatan_controller.dart';

class ForumTenagaKesehatanView extends GetView<ForumTenagaKesehatanController> {
  const ForumTenagaKesehatanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForumTenagaKesehatanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ForumTenagaKesehatanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
