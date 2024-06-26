import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/Features/first_screen/presentation/views/widgets/car_data_widget.dart';

// import '..\..\..\..\first_screen\presentation\views\widgets\car_data_widget.dart';
import 'package:flutter/material.dart';

Widget buildVehicleInfo() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CarDataWidget(
              icon: Icons.add_home_rounded,
              text: 'مكفوله ل',
              num: '2021',
            ),
            SizedBox(
              width: 10.w,
            ),
            const CarDataWidget(
              icon: Icons.money,
              text: 'كم',
              num: '2000',
            ),
            SizedBox(
              width: 10.w,
            ),
            const CarDataWidget(
              icon: Icons.date_range,
              text: 'الصنع',
              num: '2019',
            ),
          ],
        ),
        SizedBox(height: 10.h),
        const Row(
          children: [
            Text(
              'يوكن بحالة جيدة',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  'د.ك ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '8,700',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Container(
          width: double.infinity,
          height: 35.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            color: const Color.fromARGB(255, 119, 64, 60),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: const Row(
              children: [
                Spacer(),
                Text(
                  ' مكفولة حتى 70000 كم',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(Icons.shield, color: Colors.white),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
