import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDataWidget extends StatelessWidget {
  const CarDataWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.num,
  });
  final IconData icon;
  final String text;
  final String num;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60.h,
        width: 60.w,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 16,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              num,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
