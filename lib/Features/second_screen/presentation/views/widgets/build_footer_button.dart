import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildFooterButtons() {
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 16.w , vertical: 16.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('احجز السيارة'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          child: const Text('موضع السيارة'),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: const Text('اتصل بنا'),
        ),
      ],
    ),
  );
}
