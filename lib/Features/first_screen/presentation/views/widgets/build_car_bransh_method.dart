import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/utils/app_assets.dart';

Widget buildCarBrands() {
  List<String> carBrands = ['جيلي', 'جيلي', 'تيوتا', 'بي ام دابليو', 'جيلي'];

  return Container(
    height: 120.h,
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: carBrands.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(
            children: [
              CircleAvatar(
                // foregroundColor: Colors.black,
                radius: 37.r,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 35.r,
                  backgroundImage: AssetImage(
                    AppAssets.car1Image,
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Expanded(child: Text(carBrands[index])),
            ],
          ),
        );
      },
    ),
  );
}
