import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/widgets/cards/custom_artikel_card.dart';
import 'package:tumbuh_kita/app/widgets/inputs/custom_search_bar.dart';

import '../controllers/artikel_controller.dart';

class ArtikelView extends GetView<ArtikelController> {
  const ArtikelView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Center(
                  child: Text(
                    "Artikel",
                    style: AppTextStyles.heading7Bold.copyWith(
                      color: Color(0xff2C0B61),
                    ),
                  ),
                ),
                SizedBox(height: 22.h),
                CustomSearchBar(
                  onChanged: (value) {
                    print('Search text changed: $value');
                  },
                  onSubmitted: (value) {
                    print('Search submitted: $value');
                  },
                  hintText: "Cari Artikel",
                ),
                SizedBox(height: 14.h,),
                CustomArtikelCard(),
                SizedBox(height: 10.h,),
                CustomArtikelCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
