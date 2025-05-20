import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  TextEditingController emailController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var selectedRole = ''.obs;
  final count = 0.obs;
  void selectRole(String role) {
    selectedRole.value = role;
  }
  void increment() => count.value++;
}
