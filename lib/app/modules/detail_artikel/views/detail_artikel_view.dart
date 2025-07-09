import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_artikel_controller.dart';

class DetailArtikelView extends GetView<DetailArtikelController> {
  const DetailArtikelView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/artikel.png",
              width: double.infinity,
              height: 450,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 43),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GestureDetector(
                    onTap: () => Get.back(),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xFF0A2533),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.close,
                        size: 24,
                        color: Color(0xFF0A2533),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 300),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff657B9A).withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 31, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 53.6,
                            height: 5,
                            decoration: BoxDecoration(
                              color: Color(0xffE3EBEC),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        SizedBox(height: 29,),
                        Text(
                          "Sukses ASI Eksklusif dengan Tingkatkan Bonding dengan Metode PMK",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Senin, 05 Mei 2015",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(height: 38),
                        Text(
                          "Pemberian ASI eksklusif selama enam bulan pertama kehidupan bayi merupakan fondasi penting bagi tumbuh kembang yang optimal. Selain memenuhi kebutuhan gizi bayi secara sempurna, ASI juga memperkuat ikatan emosional antara ibu dan anak. Salah satu metode yang efektif dalam mendukung keberhasilan ASI eksklusif adalah PMK (Pijat, Menyusui, Kontak kulit ke kulit).\n\nMetode PMK menggabungkan tiga pendekatan penting: \n1. Pijat bayi secara lembut meningkatkan sirkulasi darah, mengoptimalkan sistem saraf, dan membuat bayi merasa nyaman sehingga lebih mudah menyusu. \n2. Menyusui secara langsung memberi kehangatan emosional dan mencukupi nutrisi yang menenangkan bagi bayi. \n3. Kontak kulit ke kulit memperkuat bonding, menstabilkan suhu tubuh bayi, serta merangsang hormon oksitosin yang mendukung metode PMK secara konsisten.\n\nDengan menerapkan metode PMK secara konsisten, ibu tidak hanya mendukung keberhasilan ASI eksklusif, tetapi juga membangun hubungan emosional yang kuat dengan bayi, sehingga si kecil dapat bertumbuh dengan bahagia dan sehat.",
                          style: TextStyle(fontSize: 16, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
