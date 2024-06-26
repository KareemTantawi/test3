
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/core/utils/app_assets.dart';

Widget buildCarImage() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
    child: Image.asset(AppAssets.car1Image),
  );
}

Widget _buildInfoIcon(String iconPath, String label) {
  return Column(
    children: [
      Image.asset(iconPath, height: 40),
      const SizedBox(height: 5),
      Text(label, style: const TextStyle(fontSize: 14)),
    ],
  );
}

Widget buildVehicleDescription() {
  return const Padding(
    padding: EdgeInsets.all(16.0),
    child: Text(
      'زيتات الجير 18 انس اسود وكروم - ديكودر خشب + كريوم - مقعد السائق كهربائي - نواسات جانبية بتحكم بالضوء مع تعديل يدوي - F1 - نظام الارتكاف - سايد بريك كهربائي - مواد داخلية اوتو - Traction off - USB - تانك بنزين - 70 مقعد خلفي والسندوق قابل للاغلاق - جناح خلفي - عاكس خلفي - سنفريس متصل بالوكالة',
      style: TextStyle(height: 1.5),
    ),
  );
}
