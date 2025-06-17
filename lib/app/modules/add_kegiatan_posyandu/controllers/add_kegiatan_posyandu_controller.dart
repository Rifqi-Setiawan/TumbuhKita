import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddKegiatanPosyanduController extends GetxController {
  TextEditingController namaKegiatanController = TextEditingController();
  TextEditingController detailKegiatanController = TextEditingController();
  TextEditingController informasiKegiatanController = TextEditingController();
  var focusedDay = DateTime.now().obs;
  var selectedDay = Rxn<DateTime>(); 
  void onDaySelected(DateTime day, DateTime focused) {
    selectedDay.value = day;
    focusedDay.value = focused;
  }
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
