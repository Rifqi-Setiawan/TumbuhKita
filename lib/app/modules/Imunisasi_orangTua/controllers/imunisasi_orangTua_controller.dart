import 'package:get/get.dart';
import 'package:tumbuh_kita/app/widgets/models/Imunization_model.dart';

class ImunisasiOrangtuaController extends GetxController {
  //TODO: Implement ImunisasiOrangtuaController
  final List<String> category = [ "semua", "mendatang", "selesai"];
  final RxString selectedCategory = "semua".obs;
  List<ImmunizationModel> get immunizationData => [
    ImmunizationModel(
      nama: "Ghani",
      vaksin: "Campak/MR",
      dosis: 1,
      umur: "2 tahun 1 bulan",
      jadwal: "5 Juni 2025",
      status: "Mendatang",
    ),
    ImmunizationModel(
      nama: "Ghani",
      vaksin: "DPT",
      dosis: 3,
      umur: "2 tahun 1 bulan",
      jadwal: "15 Mei 2025",
      status: "Selesai",
    ),
    ImmunizationModel(
      nama: "Sari",
      vaksin: "Polio",
      dosis: 2,
      umur: "1 tahun 6 bulan",
      jadwal: "20 Maret 2025",
      status: "Selesai",
    ),
    ImmunizationModel(
      nama: "Ahmad",
      vaksin: "BCG",
      dosis: 1,
      umur: "6 bulan",
      jadwal: "10 Juni 2025",
      status: "Mendatang",
    ),
    ImmunizationModel(
      nama: "Siti",
      vaksin: "Hepatitis B",
      dosis: 2,
      umur: "1 tahun",
      jadwal: "2 April 2025",
      status: "Mendatang",
    ),
  ];

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

  void selectCategory(String category) {
    selectedCategory.value = category;
    
    // Filter data berdasarkan kategori
    switch (category) {
      case "semua":
        // Load semua data
        break;
      case "mendatang":
        // Load data mendatang
        break;
      case "selesai":
        // Load data selesai  
        break;
    }
  }
  List<ImmunizationModel> getFilteredData() {
    if (selectedCategory.value == 'semua') {
      return immunizationData;
    } else {
      return immunizationData
          .where((item) => 
              item.status.toLowerCase() == selectedCategory.value.toLowerCase())
          .toList();
    }
  }
}
