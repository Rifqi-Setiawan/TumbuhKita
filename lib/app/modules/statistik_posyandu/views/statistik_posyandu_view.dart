import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistik_posyandu_controller.dart';

class StatistikPosyanduView extends GetView<StatistikPosyanduController> {
  const StatistikPosyanduView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatistikPosyanduView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StatistikPosyanduView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
