import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/features/car/models/car_model.dart';

class CarCardDetailsScreen extends StatelessWidget {
  final CarModel carModel;
  const CarCardDetailsScreen({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Car owner section
            ListTile(
              leading: CircleAvatar(
                radius: 24.r,
                backgroundImage: AssetImage(AppImges.personImagePlaceholder),
              ),
              title: Text(
                'Ahmed Ragab',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('0111033083\n7649 Church Close, Port Yolanda'),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 16.h),
            // With driver toggle
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('With Driver', style: TextStyle(fontSize: 16.sp)),
                Switch(value: true, onChanged: (val) {}),
              ],
            ),
            SizedBox(height: 16.h),
            
            // switching tap 

            
            
            
            // Car image carousel
            Center(
              child: Image.asset(
                AppImges.carImagePlaceholder,
                height: 180.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.h),
            // Car title + rating + price
            Text(
              '2025 Audi A3 All Wheel Drive Only',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                Text('4.5 (200 Reviews)', style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              '\$1500 / Month',
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.h),
            // Overview
            Text(
              'Overview',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            Text(
              'The AC Cobra, sold in the US as the Shelby Cobra, is a sports car manufactured by British company AC Cars...',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16.h),
            // Features grid
            Text(
              'Features',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            Wrap(
              spacing: 12.w,
              runSpacing: 12.h,
              children: [
                _buildFeatureChip(Icons.bluetooth, 'Bluetooth'),
                _buildFeatureChip(Icons.ac_unit, 'Climate Control'),
                _buildFeatureChip(Icons.event_seat, 'Fabric Seats'),
                _buildFeatureChip(Icons.sensors, 'Parking Sensors'),
                _buildFeatureChip(Icons.camera, 'Reverse Camera'),
              ],
            ),
            SizedBox(height: 16.h),
            // Reviews
            Text(
              'Reviews and rating',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),
            _buildReviewBar('Value for Money', 4.7),
            _buildReviewBar('Car Cleanliness', 4.4),
            _buildReviewBar('Delivery Speed', 4.2),
            _buildReviewBar('Pickup Speed', 4.4),
            SizedBox(height: 16.h),
            // User reviews (simple placeholders)
            _buildUserReview('Ahmed', 'Excellent experience!'),
            _buildUserReview('Jihad', 'Smooth ride and clean car.'),
            SizedBox(height: 16.h),
            // Rent now button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                ),
                child: Text('Rent now'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureChip(IconData icon, String label) {
    return Chip(
      avatar: Icon(icon, size: 16),
      label: Text(label),
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget _buildReviewBar(String label, double rating) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        LinearProgressIndicator(value: rating / 5),
        SizedBox(height: 4.h),
      ],
    );
  }

  Widget _buildUserReview(String name, String comment) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(AppImges.personImagePlaceholder),
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(comment),
    );
  }
}
