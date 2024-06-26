import 'package:get/get.dart';
import 'package:test/Features/first_screen/presentation/views/first_screen.dart';
import 'package:test/Features/second_screen/presentation/views/second_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.SPLASH;

  // static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.firstScreen,
      page: () => const FirstScreen(),
    ),
    GetPage(
      name: Routes.secondScreen,
      page: () => const SecondScreen(),
    ),
    // GetPage(
    //   name: Routes.NOCONNECTION,
    //   page: () => const NoConnectionPage(),
    // ),
    // GetPage(
    //   name: Routes.WELCOME,
    //   page: () => WelcomeView(),
    // ),
    // GetPage(
    //   name: Routes.LanguageSelect,
    //   page: () => LanguageSelectView(),
    // ),
    // GetPage(
    //   name: Routes.CONTACTUS,
    //   page: () => const ContactUsPage(),
    // ),
    // GetPage(
    //   name: Routes.UserProfilePage,
    //   page: () => UserProfilePage(),
    // ),
    // GetPage(
    //   name: Routes.LOGIN,
    //   page: () => LoginPage(),
    // ),
    // GetPage(
    //   name: Routes.SIGNUP,
    //   page: () => RegisterPage(),
    // ),
    // GetPage(
    //   name: Routes.OTPVERIFY,
    //   page: () => OTPVerifyPage(),
    // ),
    // GetPage(
    //   name: Routes.MAIN,
    //   page: () => const MainScreen(),
    // ),
  ];
}
