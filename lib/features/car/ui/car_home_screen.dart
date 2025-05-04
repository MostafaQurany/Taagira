import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/ui/widgets/carHome/car_card.dart';

class CarHomeScreen extends StatelessWidget {
  const CarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 16.sp,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              "52841 Bridle Squares",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  height: 50.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      6,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: CircleAvatar(
                          radius: 24.r,
                          backgroundColor: Colors.grey.shade200,
                          child: Icon(Icons.directions_car, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                Text(
                  "All Cars",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12.h),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.w,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: 0.8,
                  children: List.generate(
                    6,
                    (index) => CarCard(
                      carModel: CarModel(
                        id: "id",
                        ownerId: "ownerId",
                        images: [],
                        brand: "Toyota",
                        model: "Camry",
                        year: 2020,
                        type: CarType.coupe,
                        transmission: CarTransmission.automatic,
                        fuelType: CarFuelType.petrol,
                        seats: 6,
                        color: "Color",
                        pricePerDay: 2000,
                        location: "Egypt",
                        isAvailable: true,
                        createdAt: DateTime.now(),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80.h),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.grey,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite_border),
      //       label: "Favorites",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart_outlined),
      //       label: "Bookings",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       label: "Profile",
      //     ),
      //   ],
      // ),
    );
  }
}
