import 'package:flutter/material.dart'; 

class CarInformationBox extends StatelessWidget {
  final int register_number ;
  final int year ;
  final Color color ;
  final String categorie ;

  CarInformationBox({required this.register_number, required this.year, required this.color, required this.categorie}) ;


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color:Color(0xFF1582DF) )
      ),
      height: 120,
      width: double.infinity,
      // color: Colors.redAccent,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top:8 ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1,child: Text("Register\nnumber",style: Theme.of(context).textTheme.labelLarge)),
                SizedBox(width: 8,),
                Expanded(flex: 1,child: Text("Year",style: Theme.of(context).textTheme.labelLarge)),
                Expanded(flex: 1,child: Text("Category",style: Theme.of(context).textTheme.labelLarge)),
              ],
            ),
            //////////// Row of values 
            Row(
              children: [
                Expanded(flex: 1,child: Text(register_number.toString())),
                SizedBox(width: 8,),
                Expanded(flex: 1,child: Text(year.toString())),
                Expanded(flex: 1,child: Text(categorie)),
                
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Color",style: Theme.of(context).textTheme.labelLarge),
              SizedBox(width: 20,),
              Container(
                width: 40,
                height: 20,
                decoration: BoxDecoration(
                  color: color,  
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.black12),
                ),
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}