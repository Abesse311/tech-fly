import 'package:flutter/material.dart'; 

class Filters extends StatelessWidget {
  final String filter ;

  Filters ({required this.filter});



  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: OutlinedButton(
        style: ButtonStyle(
          
        ),
        onPressed: () {},
        child: Row(
          children: [
            Text(filter,style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white),), 
            Icon(Icons.arrow_drop_down_outlined,color: Colors.white,)
          ],
        ),
      
      ),
    );
  }
}