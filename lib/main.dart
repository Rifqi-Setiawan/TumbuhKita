import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:tumbuh_kita/app/root/initial_binding.dart';

import 'app/core/config/app_config.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await initializeDateFormatting('id_ID', null);
  Intl.defaultLocale = 'id_ID';
  final config = AppConfig.fromEnv();
  Get.put<AppConfig>(config, permanent: true);
  FlutterError.onError = (details) {
    FlutterError.dumpErrorToConsole(details);
  };

  runZonedGuarded(() {
    runApp(
      ScreenUtilInit(
        designSize: const Size(402, 874),
        minTextAdapt: true,
        child: GetMaterialApp(
          initialBinding: InitialBinding(),
          title: config.appName,
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          builder: (context, widget) {
            if (widget == null) return const SizedBox.shrink();
            final media = MediaQuery.of(context);
            return MediaQuery(
              data: media.copyWith(textScaler: const TextScaler.linear(1.0)),
              child: widget,
            );
          },
        ),
      ),
    );
  }, (error, stack) {
  });
}
