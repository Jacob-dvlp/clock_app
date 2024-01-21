import 'package:flutter/material.dart';

class MinutesWidget extends StatelessWidget {
  final double minutes;
  const MinutesWidget({super.key, required this.minutes});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: minutes,
      child: Container(
        alignment: const Alignment(0, -0.35),
        child: Container(
          height: 260,
          width: 4,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white),
        ),
      ),
    );
  }
}
