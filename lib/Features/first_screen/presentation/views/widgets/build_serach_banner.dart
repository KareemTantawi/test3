import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildSearchBar() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'ابحث عن سيارتك',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0.r),
        ),
      ),
    ),
  );
}
