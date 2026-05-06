import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      height: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14),
        child: Column(
          children: [
            Center(
              child: Text(
                "Date",
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
            SizedBox(height: 12),

            //////////////// Select the Date 
          ],
        ), 
      ), 
    ); 
  }
}