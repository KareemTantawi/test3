import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/Features/first_screen/presentation/views/widgets/car_data_widget.dart';

class SimilarCarWidget extends StatelessWidget {
  const SimilarCarWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 182.w,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
        child: Column(
          children: [
            Image.asset(image),
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
    );
  }
}
