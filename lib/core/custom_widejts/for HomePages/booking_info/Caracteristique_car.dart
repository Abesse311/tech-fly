import 'package:flutter/material.dart';
import 'package:flutter_application_1/test_model.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Caracteristique_Car extends StatelessWidget {
  final String logo_path ;
  final String brand ;
  final String model ;
  final String gearbox ;
  final String energy ;
  final double weel ;
  final int seats ;

  Caracteristique_Car({
    required this. logo_path,
    required this.model ,
    required this.brand ,
    required this.energy ,
    required this.gearbox ,
    required this.seats ,
    required this.weel ,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color.fromARGB(255, 153, 153, 153),
      height: 150,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              //////////////// (firs row) container 1 
              Expanded(
                flex: 1,
                child: myContainer(Padding(
                  padding: const EdgeInsets.only(left: 12.0,top: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(logo_path,height: 40,width: 40,),
                      Text(brand,style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                )),
              ),
              SizedBox(width: 6),
              //////////////// (firs row) container 2
              Expanded(
                flex: 1,
                child: myContainer(Padding(
                  padding: const EdgeInsets.only(left: 12.0,top: 8),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      SvgPicture.asset("icons/fuel.svg",height: 30),
                      SizedBox(height: 5,),
                      Text(energy,style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                )),
              ),
              SizedBox(width: 6),
              //////////////// (firs row) container 3
              Expanded(
                flex: 1,
                child: myContainer(Padding(
                  padding: const EdgeInsets.only(left: 12.0,top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("icons/gearbox.svg",height: 30),
                      SizedBox(height: 5,),
                      Text(gearbox,style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                )),
              ),
            ],
          ),
          SizedBox(height: 6,),
          Row(
            children: [
              //////////////// (second Row) container 1
              Expanded(
                flex: 1,
                child: myContainer(Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("icons/smallcar.svg",height: 40,width: 40,),
                      Text(model,style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                )),
              ),
              SizedBox(width: 6),
              //////////////// (second Row) container 2
              Expanded(
                flex: 1,
                child: myContainer(Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("icons/seatcar.svg",height: 25,width: 30,),
                      SizedBox(height: 5,),
                      Text("${seats.toString()} seats",style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                )),
              ),
              SizedBox(width: 6),
              //////////////// (second Row) container 3
              Expanded(
                flex: 1,
                child: myContainer(Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8,vertical:5 ),
                  child: Column(
                    crossAxisAlignment:.start,
                    children: [
                      SvgPicture.asset("icons/steering.svg",height: 35,width: 20,),
                      SizedBox(height: 2,),
                      Text("${weel.toString()}T",style: Theme.of(context).textTheme.labelLarge,)
                    ],
                  ),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget myContainer(Widget child) {
  return Container(
    decoration: BoxDecoration(
      color: Color(0xFFE6E6E6),
      borderRadius: BorderRadius.circular(15)
    ),
    height: 70,  
    child: child,

    );
}


