import 'package:flutter/material.dart';

class SecondsWidget extends StatelessWidget {
  final double seconds;
  const SecondsWidget({super.key, required this.seconds});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: seconds,
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
