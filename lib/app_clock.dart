import 'package:flutter/material.dart';

class AppClock extends StatefulWidget {
  const AppClock({super.key});

  @override
  State<AppClock> createState() => _AppClockState();
}

class _AppClockState extends State<AppClock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(8, 25, 35, 1),
      alignment: const Alignment(0, 0),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/clock.png",
              color: Colors.white,
            ),
          ),
          
          Container(
            alignment: const Alignment(0, 0),
            child: Container(
              height: 15,
              width: 15,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
            ),
          ),
          Container(
            alignment: const Alignment(0, -0.35),
            child: Container(
              height: 230,
              width: 4,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
