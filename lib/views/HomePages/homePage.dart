import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20HomePages/car_card.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20HomePages/filters.dart';
import 'package:flutter_application_1/core/theme/app_color.dart';
import 'package:flutter_application_1/views/HomePages/show_car.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentGeometry.bottomCenter,

            children: [
              Container(child: Image.asset("img/bluecar.png")),
              Positioned(
                top: 30,
                left: 8,
                right: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("icons/logo.png", height: 30, width: 75),
                    Icon(Icons.notifications_none, color: Colors.white),
                  ],
                ),
              ),
              /////// BOOK YOUR CAR TO DRIVE (text)
              Positioned(
                bottom: 230,
                child: Text.rich(
                  TextSpan(
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.white,
                      height: 1.0,
                    ),
                    children: [
                      TextSpan(text: "  BOOK YOUR\n      CAR TO\n       "),
                      TextSpan(
                        text: "DRIVE",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 65,
                left: 55,
                right: 55,
                child: SizedBox(
                  height: 36,
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        // vertical: 15,
                      ),
                      prefixIcon: Icon(Icons.search, color: AppTheme.primary),
                      hintText: "Search a car",
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 12,
                child: Container(
                  // color: Colors.redAccent,
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Filters(filter: "State"),
                      Filters(filter: "select date"),
                      Filters(filter: "Fuel"),
                      Filters(filter: "Transmission"),
                      Filters(filter: "Tags"),
                      Filters(filter: "catigories"),
                      Filters(filter: "Brands"),
                      Filters(filter: "Test",onPressed:() {
                        Get.to(() => Show_car());
                      },)
                    ],
                  ),
                ),
              ),
            ],
          ),
          /////////////////////////////////////////////// SECOND PART 
          Padding(
            padding: const EdgeInsets.only( top: 14),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppTheme.primary, width: 1.8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /////////////////// Recommended
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      "Recommended",
                      style: TextStyle(
                        color: AppTheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  /////////////////// divider
                  Container(
                    width: 1.5,
                    height: 24,
                    color: Colors.grey.shade400,
                  ),
                  /////////////////// Near you tab
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      "Near you",
                      style: TextStyle(
                        color: AppTheme.textSecondary,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 14,) ,

          Expanded(child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                CarCard(img_path: "img/RsLine.jpg", car_model: "RS Line", car_address: "Béchar", rating: 5, car_price: 4000),
                CarCard(img_path: "img/RS7.jpg", car_model: "Audi RS7", car_address: "Oran 31", rating: 5, car_price: 8000),
                CarCard(img_path: "img/duster.jpg", car_model: "Duster", car_address: "Mostaganem", rating: 5, car_price: 3500),
                CarCard(img_path: "img/gle.jpg", car_model: "Benz GLE", car_address: "Telemcen", rating: 5, car_price: 7000),
                // Container(
                //   height: 50,
                //   width: double.infinity,
                //   color: Colors.redAccent,
                // )
                
              ],
            ),
          )
          ),
          SizedBox(height: 100,)
          
          
        ],
      ),
    );
  }
}
