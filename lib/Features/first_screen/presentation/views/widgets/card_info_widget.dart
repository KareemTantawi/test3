import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/Features/first_screen/presentation/views/widgets/car_data_widget.dart';
import 'package:test/core/routes/app_pages.dart';

// ignore: must_be_immutable
class CardInfoWidget extends StatelessWidget {
  CardInfoWidget({
    super.key,
    required this.carImages,
    required this.index,
  });

  final List<String> carImages;
  int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.secondScreen),
      child: SizedBox(
        width: 182.w,
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
          child: Column(
            children: [
              Image.asset(carImages[index]),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CarDataWidget(
                      icon: Icons.add_home_rounded,
                      text: 'مكفوله ل',
                      num: '2021',
                    ),
                    CarDataWidget(
                      icon: Icons.money,
                      text: 'كم',
                      num: '2000',
                    ),
                    CarDataWidget(
                      icon: Icons.date_range,
                      text: 'الصنع',
                      num: '2019',
                    ),
                    CarDataWidget(
                      icon: Icons.money,
                      text: 'السعر',
                      num: '12700',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
