import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/dropbutton.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20HomePages/booking_info/Caracteristique_car.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20HomePages/booking_info/car_information_box.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20HomePages/booking_info/pricing_box.dart';
import 'package:flutter_application_1/core/custom_widejts/for%20HomePages/booking_info/series_boxes.dart';
import 'package:get/get.dart';

class Show_car extends StatelessWidget {
  Show_car({super.key});

  final controller = Get.put(BookingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "img/RS7.jpg",
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),  //  Color.fromARGB(255, 113, 165, 214)
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  height: 40,
                  width: 80,
                  child: Center(child: Image.asset("icons/logo.png")),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              // height: 50,
              width: double.infinity,
              // color: Colors.redAccent,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Audi RS7",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Row(
                            children: [
                              Text(
                                "4.5",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              Icon(Icons.star, color: Color(0xFFFCD630)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),

                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE6E6E6),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        height: 50,
                        width: 330,
                        child: Row(
                          children: [
                            SizedBox(width: 19),
                            CircleAvatar(
                              backgroundImage: AssetImage("img/agency.jpg"),
                            ),
                            SizedBox(width: 19),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Owner",
                                    style: Theme.of(context).textTheme.bodyLarge
                                        ?.copyWith(
                                          height: 1.0,
                                          color: Color(0xFF242424),
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                  Text(
                                    "Boiking Agency",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          height: 1.0,
                                          color: Color(0xFF000000),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),

                      Divider(thickness: 2.5, color: Color(0xFFEEEEEE)),

                      Text(
                        "Location",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Icon(
                                Icons.location_on_rounded,
                                color: Color(0xFF1582DF),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Rue des Jasmins, Cité El Alia, Biskra 07000, Algérie ",
                                style: Theme.of(context).textTheme.labelLarge,
                                maxLines: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Caractéristique du véhicule",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(height: 8),

                      ///////////////////////////// gridview ??? / custom widjet
                      Caracteristique_Car(
                        "icons/audi.png",
                        "Audi",
                        "Disel",
                        "Manaul",
                        "Audi RS7",
                        5,
                        4.5,
                      ),

                      ////////////////////////////////
                      Divider(thickness: 2.5, color: Color(0xFFEEEEEE)),
                      SizedBox(height: 8),
                      Text(
                        "Series",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Full name",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Text(
                            "Audi RS7 Sportback",
                            style: Theme.of(context).textTheme.labelLarge
                                ?.copyWith(color: Color(0xFF000000)),
                          ),
                        ],
                      ),

                      ////////////////// three boxes
                      SeriesBoxes(
                        serires: "Audi RS",
                        model: "RS C8",
                        generation: "Latest",
                      ),

                      ////////////////////
                      Divider(thickness: 2.5, color: Color(0xFFEEEEEE)),
                      SizedBox(height: 6),

                      Text(
                        "Car Information",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),

                      /////////////////// box of information
                      CarInformationBox(
                        register_number: 5434511231,
                        year: 2012,
                        color: Colors.grey,
                        categorie: "SUV",
                      ),

                      //////////////////
                      SizedBox(height: 6),
                      Divider(thickness: 2.5, color: Color(0xFFEEEEEE)),
                      SizedBox(height: 6),

                      Text(
                        "Pricing",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(height: 6),

                      RichText(
                        text: TextSpan(
                          text:
                              "Pricing is based on duration and distance. Each rental duration (e.g., 1-3 days) has a base price (e.g., 5000 DA), with additional charges for extended distances\n(e.g., 10 DA/km for 10-20 km)",
                          style: Theme.of(
                            context,
                          ).textTheme.labelLarge?.copyWith(fontSize: 15),
                        ),
                      ),

                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: Colors.blue, // background color
                                borderRadius: BorderRadius.circular(
                                  15,
                                ), // rounded corners
                              ),
                              child: DropdownButton<String>(
                                value: controller.selectedDuration.value,
                                iconEnabledColor: Colors.white,
                                dropdownColor:
                                    Colors.blue, // dropdown menu color (optional)
                                underline:
                                    SizedBox(), // removes the default underline
                          
                                hint: Text(
                                  "Choose duration",
                                  style: TextStyle(color: Colors.white),
                                ),
                          
                                style: TextStyle(
                                  color: Colors.white,
                                ), // selected text color
                          
                                items: [
                                  DropdownMenuItem(
                                    value: "1-3 days",
                                    child: Text("1-3 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: "3-7 days",
                                    child: Text("3-7 days"),
                                  ),
                                  DropdownMenuItem(
                                    value: "7+ days",
                                    child: Text("7+ days"),
                                  ),
                                ],
                          
                                onChanged: (value) {
                                  controller.updateDuration(value);
                                },
                              ),
                            ),
                          ),
                          Text("4000 DA/jour",style: TextStyle(fontSize: 18),)
                        ],
                      ),

                      SizedBox(height: 8,),

                      /////////////// pricing box
                      
                      PricingBox(),

                      //////////////////////////
                      

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Book now"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
