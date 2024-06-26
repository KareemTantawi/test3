import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          Icon(Icons.favorite_border, color: Colors.black),
          SizedBox(width: 10.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildCarImage(),
            _buildVehicleInfo(),
            _buildVehicleAttributes(),
            _buildVehicleDescription(),
            _buildSimilarVehicles(),
            _buildFooterButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildCarImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset('assets/car_details.png'), // Replace with your asset
    );
  }

  Widget _buildVehicleInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildInfoIcon('assets/icons/mileage.png', '2000'),
              _buildInfoIcon('assets/icons/year.png', '2019'),
              _buildInfoIcon('assets/icons/gearbox.png', '6'),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'بيوك بحالة جيدة',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text(
                'د.ك ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '8,700',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.shield, color: Colors.red),
              Text(
                ' مكفولة حتى 70000 كم',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoIcon(String iconPath, String label) {
    return Column(
      children: [
        Image.asset(iconPath, height: 40), // Replace with your asset
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _buildVehicleAttributes() {
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
          SizedBox(width: 10),
          Text(attribute),
          Spacer(),
          Text(value),
        ],
      ),
    );
  }

  Widget _buildVehicleDescription() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'زيتات الجير 18 انس اسود وكروم - ديكودر خشب + كريوم - مقعد السائق كهربائي - نواسات جانبية بتحكم بالضوء مع تعديل يدوي - F1 - نظام الارتكاف - سايد بريك كهربائي - مواد داخلية اوتو - Traction off - USB - تانك بنزين - 70 مقعد خلفي والسندوق قابل للاغلاق - جناح خلفي - عاكس خلفي - سنفريس متصل بالوكالة',
        style: TextStyle(height: 1.5),
      ),
    );
  }

  Widget _buildSimilarVehicles() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'السيارات المشابهة',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildSimilarVehicleCard(),
              _buildSimilarVehicleCard(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSimilarVehicleCard() {
    return Container(
      width: 160,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Image.asset('assets/car_similar.png',
              height: 100), // Replace with your asset
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('جي ام سي | الفئة الرابعة',
                    style: TextStyle(fontSize: 14)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('2021', style: TextStyle(fontSize: 12)),
                    Text('20000 كم', style: TextStyle(fontSize: 12)),
                    Text('2019', style: TextStyle(fontSize: 12)),
                    Text('12,700', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterButtons() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('احجز السيارة'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text('موضع السيارة'),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: Text('اتصل بنا'),
          ),
        ],
      ),
    );
  }
}
