import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/posyandu_controller.dart';

class PosyanduView extends GetView<PosyanduController> {
  const PosyanduView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PosyanduView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PosyanduView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
