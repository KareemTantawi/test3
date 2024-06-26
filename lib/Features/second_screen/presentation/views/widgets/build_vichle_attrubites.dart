import 'package:flutter/material.dart';

Widget buildVehicleAttributes() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        _buildAttributeRow('اللون الخارجي', 'أبيض', Icons.color_lens),
        _buildAttributeRow('اللون الداخلي', 'بيج', Icons.color_lens_outlined),
        _buildAttributeRow('نوع الوقود', 'مخلط', Icons.local_gas_station),
        _buildAttributeRow('كاميرا', 'أمامي - خلفي', Icons.camera_alt),
        _buildAttributeRow('سلندرات', '6', Icons.confirmation_number),
        _buildAttributeRow('ناقل الحركة', 'أوتوماتيك', Icons.speed),
      ],
    ),
  );
}
Widget _buildAttributeRow(String attribute, String value, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      children: [
        Icon(icon, size: 20, color: Colors.grey),
        const SizedBox(width: 10),
        Text(attribute),
        const Spacer(),
        Text(value),
      ],
    ),
  );
}
