import 'package:get/get.dart';
import 'package:test/Features/first_screen/presentation/views/first_screen.dart';
import 'package:test/Features/second_screen/presentation/views/second_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static final routes = [
    GetPage(
      name: Routes.firstScreen,
      page: () => const FirstScreen(),
    ),
    GetPage(
      name: Routes.secondScreen,
      page: () => SecondScreen(),
    ),
  ];
}
