import 'package:flutter/material.dart'; 


class SeriesBoxes extends StatelessWidget {
  String serires ;
  String model ;
  String generation ;

  SeriesBoxes({required this.serires, required this.model, required this.generation});


  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80,
      width: double.infinity,
      // color: Colors.redAccent,
      child: Row(
        children: [
          /////////////// first Box
          Expanded(
            flex: 1,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF1582DF),
                  width: 1
                ),
                borderRadius: BorderRadius.circular(15,)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Text("Series",style: Theme.of(context).textTheme.bodyLarge,) ,
                      Text(serires)
                    ],
                  ),
                ),
              ),
            )
          ),

          SizedBox(width: 10,),

          /////////////// second Box

          Expanded(
            flex: 1,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF1582DF),
                  width: 1
                ),
                borderRadius: BorderRadius.circular(15,)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Text("Model",style: Theme.of(context).textTheme.bodyLarge) ,
                      Text(model)
                    ],
                  ),
                ),
              ),
            )
          ),

          SizedBox(width: 10,),

          /////////////// third Box

          Expanded(
            flex: 1,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF1582DF),
                  width: 1
                ),
                borderRadius: BorderRadius.circular(15,)
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Text("Generation",style: Theme.of(context).textTheme.bodyLarge) ,
                      Text(generation)
                    ],
                  ),
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}