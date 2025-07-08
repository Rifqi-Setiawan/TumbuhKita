import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_artikel_controller.dart';

class DetailArtikelView extends GetView<DetailArtikelController> {
  const DetailArtikelView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailArtikelView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailArtikelView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
