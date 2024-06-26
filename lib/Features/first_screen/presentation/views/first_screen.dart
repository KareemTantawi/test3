import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/Features/first_screen/presentation/views/widgets/build_car_bransh_method.dart';
import 'package:test/Features/first_screen/presentation/views/widgets/build_car_list_method.dart';
import 'package:test/Features/first_screen/presentation/views/widgets/build_filter_button_methods.dart';
import 'package:test/Features/first_screen/presentation/views/widgets/build_serach_banner.dart';
import 'package:test/Features/first_screen/presentation/views/widgets/notification_icon_widget.dart';
import 'package:test/core/utils/app_assets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF5E5E5E).withOpacity(0.7),
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SvgPicture.asset(
            //   AppAssets.menuIcon,
            // ),
            NotificationIconWidget(),
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildCarBrands(),
            buildMainBanner(),
            buildSearchBar(),
            _buildFilterOptions(),
            buildCarList(),
            _buildBottomBanner(),
          ],
        ),
      ),
    );
  }

  Widget buildMainBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8.h),
      child: Image.asset(AppAssets.car1Image),
    );
  }

  Widget _buildFilterOptions() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildFilterButton('أمريكي'),
          buildFilterButton('أوروبي'),
          buildFilterButton('أسيوي'),
        ],
      ),
    );
  }

  Widget _buildBottomBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(AppAssets.car3Image),
    );
  }
}

