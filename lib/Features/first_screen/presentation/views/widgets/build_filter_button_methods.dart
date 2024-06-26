import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildFilterButton(String label) {
  return SizedBox(
    height: 36.h,
    width: 110.w,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        // shadowColor: const
        backgroundColor: const Color(0xFF5E5E5E).withOpacity(0.7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(84.r),
          // side: const BorderSide(
          //     // color: ,
          //     ),
        ),
      ),
      onPressed: () {},
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}
