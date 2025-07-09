import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/jawab_pertanyaan_tenaga_kesehatan_controller.dart';

class JawabPertanyaanTenagaKesehatanView
    extends GetView<JawabPertanyaanTenagaKesehatanController> {
  const JawabPertanyaanTenagaKesehatanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JawabPertanyaanTenagaKesehatanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'JawabPertanyaanTenagaKesehatanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
