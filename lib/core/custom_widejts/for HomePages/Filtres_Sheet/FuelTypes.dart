import 'package:flutter/material.dart';

class Fueltypes extends StatelessWidget {
  const Fueltypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      height: 320,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14),
        child: Column(
          children: [
            Center(
              child: Text(
                "Fuel Type",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: "Search a car",
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Color(0xFF1582DF),
                ),
              ),
            ),
            SizedBox(height: 12), // ] ), ), ); 

            ///////////////////////////////////////////////////////////////////
            ///
            Column(
              children: [
                Row(
                  children: [
                    MyContainer(feulTupe: "Diesel"),
                    // SizedBox(width: 15,),
                    MyContainer(feulTupe: "Hybrid"),
                    // SizedBox(width: 15,),
                    MyContainer(feulTupe: "Petrol"),
                  ],
                ),
                Row(
                  children: [
                    MyContainer(feulTupe: "Diesel"),
                    MyContainer(feulTupe: "Hybrid/ESS/sss"),
                    MyContainer(feulTupe: "Petrol"),
                  ],
                ),
                Row(
                  children: [
                    MyContainer(feulTupe: "Diesel"),
                    MyContainer(feulTupe: "Liquefied coal hydrogen gases"),
                  ],
                ),
              ],
            )
            
          ],
        ), 
      ), 
    ); 
  }
} 



class MyContainer extends StatelessWidget {
  String feulTupe ;

  MyContainer({required this.feulTupe}) ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 6),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF1F1F1),
          borderRadius: BorderRadius.circular(8)
        ),
        // height: 30,
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(feulTupe,style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 16),),
        ),
      ),
    );
  }
}