import 'package:flutter/material.dart';

//////// home
// model /car_img_path / address / rating / price

//////// show car
// logo_path /brand /energy /gearbox /model /seats /weel
//serie /model /generation
//registerNumber /year /category /color

class Car_Card {
  // homePage
  final String model;
  final String car_img_path;
  final String address;
  final double rating;
  final double pricePerDay;

  Car_Card({
    required this.car_img_path,
    required this.model,
    required this.address,
    required this.rating,
    required this.pricePerDay,
  });
}

// show car
class Caracteristique {
  final String brand_img_path;
  final String brand;
  final String energy;
  final String gearbox;
  final String model;
  final int seats;
  final String weel; // 4.0L V8 / 4.5T style /// replaced weel

  Caracteristique({
    required this.brand_img_path,
    required this.brand,
    required this.energy,
    required this.gearbox,
    required this.model,
    required this.seats,
    required this.weel,
  });
}

class Serie_car {
  final String serie;
  final String model;
  final String generation;

  Serie_car({
    required this.serie,
    required this.model,
    required this.generation,
  });
}



class Box_info_car {
  final String registerNumber;   
  final int year;
  final String category;
  final Color color;

  Box_info_car({
    required this.registerNumber,
    required this.year, 
    required this.category, 
    required this.color});
  
}

  
// 1 regstier number 
//2 year 
//3 color 
//4 categorie 
//5 brand 
//6 energy 
//7 gearbox 
//8 model 
//9 number of seats 
//10 weel like (.4.5T) 
//11 serie 
//12 generation
// 13 address (just any address ) 
//14 rating (out of 5) 
//15 price

// class CarInformationBox extends StatelessWidget {
//   final int register_number ;
//   final int year ;                                4
//   final Color color ;
//   final String categorie ;

//   CarInformationBox({required this.register_number, required this.year, required this.color, required this.categorie}) ;

// ////////////////////////////////////////////////////////////////////

// class Caracteristique extends StatelessWidget {
//   String logo_path ;                       0
//   String car_brand ;                        6
//   String energy ;                               
//   String gearbox ;
//   String car_model ;
//   int seats ;
//   double weel ;

//   Caracteristique_Car(
//      this.img_path, 
//      this.car_brand, 
//      this.energy, 
//      this.gearbox, 
//      this.car_model, 
//      this.seats, 
//      this.weel
//     ) ;



// ////////////////////////////////////////////////////////////////////
// class SeriesBoxes extends StatelessWidget {
//   String serires ;
//   String model ;                                2
//   String generation ;

//   SeriesBoxes({required this.serires, required this.model, required this.generation});


  
// ////////////////////////////////////////////////////////////////////


// class Car_Card extends StatelessWidget {
//   String car_img_path;
//   String car_model;
//   String car_address;                      3
//   int rating;
//   int car_price;

//   Car_Card({
//     required this.img_path,
//     required this.car_model,
//     required this.car_address,
//     required this.rating,
//     required this.car_price,
//   });
  
  
