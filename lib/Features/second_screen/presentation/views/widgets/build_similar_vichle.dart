import 'package:flutter/material.dart';
import 'package:test/core/utils/app_assets.dart';

import 'similar_car_widget.dart';

Widget buildSimilarVehicles() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'السيارات المشابهة',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SimilarCarWidget(image: AppAssets.car1Image),
            SimilarCarWidget(image: AppAssets.car2Image),
            // SimilarCarWidget(image: AppAssets.car2Image),
          ],
        ),
      ),
    ],
  );
}
