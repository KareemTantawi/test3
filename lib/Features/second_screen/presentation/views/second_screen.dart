import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/Features/second_screen/presentation/views/widgets/build_footer_button.dart';
import 'package:test/Features/second_screen/presentation/views/widgets/build_similar_vichle.dart';
import 'package:test/Features/second_screen/presentation/views/widgets/build_vichle_attrubites.dart';
import 'package:test/Features/second_screen/presentation/views/widgets/build_vichle_info.dart';
import 'package:test/Features/second_screen/presentation/views/widgets/image&description.dart';
import 'package:test/core/utils/app_assets.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.favorite_border,
          color: Colors.black,
          size: 24,
        ),
        actions: [
          const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24,
          ),
          SizedBox(width: 10.w),
          // const Icon(
          //   Icons.screen_share_outlined,
          //   color: Colors.black,
          //   size: 24,
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildCarImage(),
            buildVehicleInfo(),
            buildVehicleAttributes(),
            buildVehicleDescription(),
            // buildCarBrands(),
            buildSimilarVehicles(),
            buildFooterButtons(),
          ],
        ),
      ),
    );
  }

  List<String> carImages = [
    AppAssets.car2Image,
    AppAssets.car3Image,
    AppAssets.car1Image,
  ];
}
