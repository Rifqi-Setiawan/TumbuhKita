import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';

import '../controllers/jawab_pertanyaan_tenaga_kesehatan_controller.dart';

class JawabPertanyaanTenagaKesehatanView
    extends GetView<JawabPertanyaanTenagaKesehatanController> {
  const JawabPertanyaanTenagaKesehatanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F0FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4F0FF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Color(0xff1C1B1F), size: 32.sp),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Jawab Pertanyaan",
          style: AppTextStyles.heading7SemiBold.copyWith(
            color: AppColors.secondary50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.r),
          ),
          margin: EdgeInsets.symmetric(horizontal: 21.w, vertical: 53.h),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          constraints: BoxConstraints(
            maxHeight: 450.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 22.0),
                decoration: BoxDecoration(
                  color: Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.neutral30,
                          child: Text(
                            "IS",
                            style: AppTextStyles.body3Regular.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ibu Sarah",
                              style: AppTextStyles.body3Semibold.copyWith(
                                color: AppColors.neutral90,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 13,
                                  color: AppColors.neutral70,
                                ),
                                SizedBox(width: 3.w),
                                Text(
                                  "2 hari yang lalu",
                                  style: AppTextStyles.caption2Regular.copyWith(
                                    color: AppColors.neutral70,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Text(
                      "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?",
                      style: AppTextStyles.body3Medium.copyWith(
                        color: AppColors.neutral90,
                      ),
                    ),
                    SizedBox(height: 18.0),
                    Text(
                      "Anak saya baru berusia 2 bulan, kapan sebaiknya mulai imunisasi dan apa saja yang perlu dipersiapkan?",
                      style: AppTextStyles.body3Regular.copyWith(
                        color: AppColors.neutral70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.0),
              Text(
                "Jawaban Anda sebagai Dr. Dokter",
                style: AppTextStyles.body3Semibold.copyWith(
                  color: AppColors.neutral90,
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Tulis jawaban yang membantu dan informatif",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 13.5.h),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.send_outlined,
                            color: AppColors.neutral10,
                            size: 20,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Kirim Jawaban",
                            style: AppTextStyles.body3Medium.copyWith(
                              color: AppColors.neutral10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    flex: 2,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 13.5.h),
                      ),
                      child: Text("Batal"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
