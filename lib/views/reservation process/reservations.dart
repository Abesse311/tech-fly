import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20HomePages/car_card.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20Reservations/Reservation_Status.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20Reservations/reseved_cars.dart'; 

class Reservations extends StatelessWidget {
  const Reservations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vos Reservations"),),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            Container(
              height: 40,
              width: double.infinity,
              // color: Colors.blue,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ReservationStatus(status: "Processing"),
                  ReservationStatus(status: "Accepted"),
                  ReservationStatus(status: "canceld"),
                  ReservationStatus(status: "In progress"),
                  
                ],
              ),
            ),
            Expanded(
              child: Container(
                // height: 50,
                width: double.infinity,
                // color: Colors.yellow,
                child: SingleChildScrollView(
                  child: Column(
                    children: [

                      ResevedCars(img_path: "img/RS7.jpg", car_model: "audi", start_date: "21/05/2026", end_date: "25/05/2026"),
                      ResevedCars(img_path: "img/RsLine.jpg", car_model: "RsLine", start_date: "21/05/2026", end_date: "25/05/2026"),
                      ResevedCars(img_path: "img/gle.jpg", car_model: "GLE", start_date: "21/05/2026", end_date: "25/05/2026"),
                      // CarCard(img_path: "img/RS7.jpg", car_model: "Audi", car_address: "oran", rating: 4, car_price: 8000),
                      // CarCard(img_path: "img/RS7.jpg", car_model: "Audi", car_address: "oran", rating: 4, car_price: 8000),
                      // CarCard(img_path: "img/RS7.jpg", car_model: "Audi", car_address: "oran", rating: 4, car_price: 8000),
                      // CarCard(img_path: "img/RS7.jpg", car_model: "Audi", car_address: "oran", rating: 4, car_price: 8000),
                      SizedBox(height: 100,)
                    ],
                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
      
    );
  }
}