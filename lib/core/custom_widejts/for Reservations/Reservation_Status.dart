import 'package:flutter/material.dart';

class ReservationStatus extends StatelessWidget {
  final String status;

  ReservationStatus({required this.status});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(status,style: Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 16),));
  }
}


