import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      height: 800,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 14),
        child: Column(
          children: [
            Center(
              child: Text(
                "States",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                hintText: "Search a car",
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Color(0xFF1582DF),
                ),
              ),
            ),
            SizedBox(height: 12),

            /////////////////////////////////////////////////
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MyBrands(brand_path_one: "img/brands/alfa.png", brand_path_two: "img/brands/ac.png",),
                    SizedBox(height: 6),
                    MyBrands(brand_path_one: "img/brands/benz.png", brand_path_two: "img/brands/bmw.jpg",),
                    SizedBox(height: 6),
                    MyBrands(brand_path_one: "img/brands/ac.png", brand_path_two: "img/brands/peugeot.png",),
                  ],
                ),
              ),
            ),

            SizedBox(height: 8),

            ElevatedButton(onPressed: () {}, child: Text("Confirm")),
          ],
        ),
      ),
    );
  }
}

class MyBrands extends StatelessWidget {

  final String brand_path_one ;
  final String brand_path_two ;

  MyBrands({required this.brand_path_one, required this.brand_path_two}) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Image.asset(
                    brand_path_one,
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Image.asset(brand_path_two, height: 70, width: 70),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
