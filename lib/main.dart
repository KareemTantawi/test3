import 'package:flutter/material.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.firstScreen,
      getPages: AppPages.routes,
    );
  }
}
