import 'package:flutter/material.dart';

class HoursWidget extends StatelessWidget {
  final double hours;
  const HoursWidget({super.key, required this.hours});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: hours,
      child: Container(
        alignment: const Alignment(0, -0.3),
        child: Container(
          height: 200,
          width: 8,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.red),
        ),
      ),
    );
  }
}
