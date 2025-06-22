import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistik_tenaga_kesehatan_controller.dart';

class StatistikTenagaKesehatanView
    extends GetView<StatistikTenagaKesehatanController> {
  const StatistikTenagaKesehatanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatistikTenagaKesehatanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StatistikTenagaKesehatanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
