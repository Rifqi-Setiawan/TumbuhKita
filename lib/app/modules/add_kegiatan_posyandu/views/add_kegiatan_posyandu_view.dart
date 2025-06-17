import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/widgets/inputs/custom_text_field_auth.dart';

import '../controllers/add_kegiatan_posyandu_controller.dart';

class AddKegiatanPosyanduView extends GetView<AddKegiatanPosyanduController> {
  const AddKegiatanPosyanduView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F0FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4F0FF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Color(0xff1C1B1F), size: 32.sp),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Tambah Kegiatan",
          style: AppTextStyles.heading8SemiBold.copyWith(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35.h,),
              CustomTextFieldAuth(
                controller: controller.namaKegiatanController,
                hintText: "Nama Kegiatan",
                label: "Nama Kegiatan",
              ),
              SizedBox(height: 15.h,),
              CustomTextFieldAuth(
                controller: controller.detailKegiatanController,
                hintText: "Detail Kegiatan",
                label: "Masukkan Detail Kegiatan",
              ),
              SizedBox(height: 15.h,),
              CustomTextFieldAuth(
                controller: controller.informasiKegiatanController,
                hintText: "Informasi Khusus",
                label: "Masukkan Informasi Khusus",
              ),
              SizedBox(height: 15.h,),
              Text("Waktu Kegiatan"),
              SizedBox(height: 8.h),
              Obx(() => Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          )
                        ],
                      ),
                      child: TableCalendar(
                        focusedDay: controller.focusedDay.value,
                        firstDay: DateTime.utc(2020, 1, 1),
                        lastDay: DateTime.utc(2030, 12, 31),
                        locale: 'id_ID', 
                        headerStyle: HeaderStyle(
                          titleCentered: true,
                          titleTextStyle: AppTextStyles.body1Bold,
                          formatButtonVisible: false, 
                          leftChevronIcon: Icon(Icons.chevron_left, color: Colors.grey.shade700),
                          rightChevronIcon: Icon(Icons.chevron_right, color: Colors.grey.shade700),
                        ),
                        calendarFormat: CalendarFormat.month,
                        daysOfWeekHeight: 20.h,
                        selectedDayPredicate: (day) => isSameDay(controller.selectedDay.value, day),
                        onDaySelected: controller.onDaySelected,
                        onPageChanged: (focused) {
                          controller.focusedDay.value = focused;
                        },
                        calendarBuilders: CalendarBuilders(
                          // Kustomisasi tampilan hari yang terpilih
                          selectedBuilder: (context, date, events) => Container(
                            margin: EdgeInsets.all(4.0.r),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.primary70,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Text(
                              date.day.toString(),
                              style: AppTextStyles.body2Bold.copyWith(color: Colors.white),
                            ),
                          ),
                          // Kustomisasi tampilan hari ini
                          todayBuilder: (context, date, events) => Container(
                            margin: EdgeInsets.all(4.0.r),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: AppColors.primary70, width: 1.5),
                            ),
                            child: Text(
                              date.day.toString(),
                              style: AppTextStyles.body2Regular.copyWith(color: AppColors.primary70),
                            ),
                          ),
                          // Kustomisasi tampilan hari dari bulan lain (abu-abu)
                          outsideBuilder: (context, date, events) => Center(
                            child: Text(
                              date.day.toString(),
                              style: AppTextStyles.body2Regular.copyWith(color: Colors.grey.shade400),
                            ),
                          ),
                        ),
                      ),
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
