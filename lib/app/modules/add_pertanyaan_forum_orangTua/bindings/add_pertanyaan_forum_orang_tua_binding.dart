import 'package:get/get.dart';

import '../controllers/add_pertanyaan_forum_orang_tua_controller.dart';

class AddPertanyaanForumOrangTuaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPertanyaanForumOrangTuaController>(
      () => AddPertanyaanForumOrangTuaController(),
    );
  }
}
