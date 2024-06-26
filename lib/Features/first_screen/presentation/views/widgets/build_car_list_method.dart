import 'package:flutter/material.dart';
import 'package:test/Features/first_screen/presentation/views/widgets/card_info_widget.dart';
import 'package:test/core/utils/app_assets.dart';

Widget buildCarList() {
  List<String> carImages = [
    AppAssets.car2Image,
    AppAssets.car3Image,
    AppAssets.car1Image,
  ];

  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: carImages.length,
    itemBuilder: (context, index) {
      return Row(
        children: [
          CardInfoWidget(
            carImages: carImages,
            index: index,
          ),
          CardInfoWidget(
            carImages: carImages,
            index: index,
          ),
          const SizedBox(
            width: 2,
          ),
        ],
      );
    },
  );
}
