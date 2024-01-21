import 'dart:async';
import 'dart:math';

import 'package:clock_app/custom_clock/dot_widget.dart';
import 'package:clock_app/custom_clock/hours_widget.dart';
import 'package:clock_app/custom_clock/minutes_widget.dart';
import 'package:clock_app/custom_clock/seconds_widget.dart';
import 'package:flutter/material.dart';

class AppClock extends StatefulWidget {
  const AppClock({super.key});

  @override
  State<AppClock> createState() => _AppClockState();
}

class _AppClockState extends State<AppClock> {
  double minutes = 0;
  double seconds = 0;
  double hours = 0;
  late Timer timer;
  @override
  void initState() {
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      DateTime now = DateTime.now();
      setState(() {
        seconds = (pi / 30) * now.second;
        hours = (pi / 6 * now.hour) + (pi / 45 * minutes);
        minutes = (pi / 30) * now.minute;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(8, 25, 35, 1),
      alignment: const Alignment(0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/clock.png",
              ),
            ),
            SecondsWidget(
              seconds: seconds,
            ),
            HoursWidget(hours: hours),
            MinutesWidget(minutes: minutes),
            const DotWidget()
          ],
        ),
      ),
    );
  }
}
