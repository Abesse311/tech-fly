import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/custom_widejts/filters.dart';
import 'package:flutter_application_1/core/theme/app_color.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("test Page",style: Theme.of(context).textTheme.headlineLarge,),),

      body: Column(
        children: [
          Row(
            children: [
              Filters(filter: "State"),
              Filters(filter: "select date"),
              Filters(filter: "Fuel"),
              Filters(filter: "Transmission"),
              Filters(filter: "Tags"),
              Filters(filter: "catigories"),
              Filters(filter: "Brands"),
            ],
          ),
        ],
      ),
    );
  }
}