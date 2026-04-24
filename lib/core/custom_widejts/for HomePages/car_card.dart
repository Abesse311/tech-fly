import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  String img_path;
  String car_model;
  String car_address;
  int rating;
  int car_price;

  CarCard({
    required this.img_path,
    required this.car_model,
    required this.car_address,
    required this.rating,
    required this.car_price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8,left: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, //Color(0xFF6B6B6B)
          borderRadius: BorderRadius.circular(20),
        ),
        height: 260,
        width: double.infinity,

        child: Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  img_path,
                  height: 200,
                  width: 330,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      car_model,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Row(
                      children: [
                        Text(
                          rating.toString(),
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Icon(
                          Icons.star_purple500_outlined,
                          color: Color(0xFFFCD630),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.place_rounded, color: Colors.black),
                        Text(
                          car_address,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Text(
                      "${car_price.toString()}DA/jour",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(color: Color(0xFF1582DF)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
