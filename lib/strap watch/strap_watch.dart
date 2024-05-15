import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class StrapClock extends StatefulWidget {
  const StrapClock({super.key});

  @override
  State<StrapClock> createState() => _StrapClockState();
}

class _StrapClockState extends State<StrapClock> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Strap Clock',
              style: TextStyle(color: Colors.blue, fontSize: 25),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
            elevation: 5,
            shadowColor: Colors.white,
          ),
          backgroundColor: Colors.black,
          body: Center(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    child: CircularProgressIndicator(
                      value: dateTime.second / 60,
                      strokeWidth: 15,
                      color: Color(0xff125488),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 265,
                    width: 265,
                    child: CircularProgressIndicator(
                      value: dateTime.minute / 60,
                      strokeWidth: 15,
                      color: Color(0xff2A93D5),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 230,
                    width: 230,
                    child: CircularProgressIndicator(
                      value: (dateTime.hour + dateTime.minute / 60) / 12,
                      strokeWidth: 15,
                      color: Color(0xff95e7fa),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')}  : ${(dateTime.minute).toString().padLeft(2, '0')}\n',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    '\n${format[dateTime.weekday - 1]}, ${dateTime.day} ${months[dateTime.month - 1]}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed('/');
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(
                                Icons.alarm,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed('/ana');
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(
                                Icons.schedule,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed('/strap');
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(
                                Icons.hourglass_top,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushReplacementNamed('/stop');
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(
                                Icons.timer_outlined,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
