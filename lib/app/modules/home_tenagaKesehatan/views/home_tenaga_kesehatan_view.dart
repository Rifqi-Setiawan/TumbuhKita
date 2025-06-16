import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_tenaga_kesehatan_controller.dart';

class HomeTenagaKesehatanView extends GetView<HomeTenagaKesehatanController> {
  const HomeTenagaKesehatanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeTenagaKesehatanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeTenagaKesehatanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
