import 'package:flutter/material.dart';

class PricingBox extends StatelessWidget {
  const PricingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.redAccent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xFF1582DF)),
      ),
      height: 150,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0-300 Km",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),),
                Text("4000 DA",style: TextStyle(fontSize: 18),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("301-600 Km",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400)),
                Text("6000 DA",style: TextStyle(fontSize: 18))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("601-800 Km",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400)),
                Text("8000 DA",style: TextStyle(fontSize: 18))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("801-1000 Km",style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400)),
                Text("9000 DA",style: TextStyle(fontSize: 18))
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
