import 'package:flutter/material.dart'; 

class ResevedCars extends StatelessWidget {
  final String img_path ; 
  final String car_model ; 
  final String start_date ; 
  final String end_date ; 

  ResevedCars({
    required this.img_path,
    required this.car_model,
    required this.start_date,
    required this.end_date,
    }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8,left: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, //Color(0xFF6B6B6B)
          borderRadius: BorderRadius.circular(20),
        ),
        height: 240,
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
                        Text(start_date,style: TextStyle(color: Color(0xFF000000)),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(Icons.arrow_right_alt_rounded,color: Color(0xFF1582DF),),
                        ),
                        Text(end_date,style: TextStyle(color: Color(0xFF000000))),
                      ],
                    )
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );;
  }
}