import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timer_daily_task/utils/global.dart';

class AnalogClock extends StatefulWidget {
  const AnalogClock({super.key});

  @override
  State<AnalogClock> createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'Assets/images/Space-Sky-Night-Dark-Nature-Bw-iphone-8.jpg')),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${(dateTime.hour % 12).toString().padLeft(2,'0')} : ${(dateTime.minute).toString().padLeft(2, '0')}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        '  ${dateTime.hour < 12 ? 'Am' : 'Pm'}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 30),
                      ),
                    )
                  ],
                ),
                Text(
                  '${format[dateTime.weekday - 1]}, ${dateTime.day} ${months[dateTime.month - 1]}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 110,
                ),
                Container(
                  height: 230,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                      ...List.generate(
                        60,
                        (index) =>
                            Transform.rotate(
                                angle: ((index) * 6 * pi) / 180,
                              child: ((index) % 5 == 0) ? VerticalDivider(
                                thickness: 2,
                                endIndent: 210,
                              )
                               : VerticalDivider(
                                thickness: 2,
                                color: Colors.transparent,
                                endIndent: 220,
                              ),
                            ),
                      ),
                      // hour
                      Transform.rotate(
                        angle: (dateTime.hour + (dateTime.minute / 60)) *
                            30 *
                            pi /
                            180,
                        child: VerticalDivider(
                          thickness: 4,
                          color: Colors.red,
                          indent: 50,
                          endIndent: 100,
                        ),
                      ),
                      //minute
                      Transform.rotate(
                        angle: (dateTime.minute * 6 * pi) / 180,
                        child: VerticalDivider(
                          thickness: 3,
                          color: Colors.red,
                          indent: 35,
                          endIndent: 100,
                        ),
                      ),
                      // second
                      Transform.rotate(
                        angle: (dateTime.second * 6 * pi) / 180,
                        child: VerticalDivider(
                          thickness: 2,
                          color: Colors.white,
                          indent: 25,
                          endIndent: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
