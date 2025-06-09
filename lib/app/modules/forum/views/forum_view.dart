import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:tumbuh_kita/app/core/theme/app_text_styles.dart';
import 'package:tumbuh_kita/app/core/theme/colors.dart';
import 'package:tumbuh_kita/app/routes/app_pages.dart';
import 'package:tumbuh_kita/app/widgets/cards/forum_question_card.dart';
import 'package:tumbuh_kita/app/widgets/inputs/custom_search_bar.dart';

import '../controllers/forum_controller.dart';

class ForumView extends GetView<ForumController> {
  const ForumView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40.h),
                Text(
                  "Forum Diskusi",
                  style: AppTextStyles.heading7Bold.copyWith(
                    color: AppColors.secondary50,
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
                  hintText: "Tanya disini",
                ),
                SizedBox(height: 37.h),
                ForumQuestionCard(question: "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?"),
                ForumQuestionCard(question: "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?"),
                ForumQuestionCard(question: "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?"),
                ForumQuestionCard(question: "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?"),
                ForumQuestionCard(question: "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?"),
                ForumQuestionCard(question: "Anak saya sering menolak makan sayur, apa yang harus saya lakukan?"),

              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 70.0),
        child: FloatingActionButton(
          onPressed: () {
            Get.toNamed(Routes.ADD_PERTANYAAN_FORUM_ORANG_TUA);
          },
          backgroundColor: AppColors.primary90,
          elevation: 0,
          shape: const CircleBorder(),
          child: FaIcon(
            FontAwesomeIcons.penToSquare,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
