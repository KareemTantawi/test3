import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test/core/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TxtManager.defaultColor = AppColors.appMainTextColor;
  await GetStorage.init();
  runApp(const Test());
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.firstScreen,
        getPages: AppPages.routes,
      ),
    );
  }
}
