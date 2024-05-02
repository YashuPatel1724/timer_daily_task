import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    String period = dateTime.hour < 12 ? 'Am' : 'PM';
    day = period;
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'Assets/images/Space-Sky-Night-Dark-Nature-Bw-iphone-8.jpg'),
              ),
            ),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                'Digital Clock',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            SizedBox(height: 50,),
            Text('${dateTime.day}/${dateTime.month}/${dateTime.year}', style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.normal),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                  '${(dateTime.hour%12).toString()} : ${dateTime.minute} : ${dateTime.second}',
            style: TextStyle(
                color: Colors.white,
                fontSize: 45,
                fontWeight: FontWeight.bold),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,),
              child: Text(
                ' $day',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ],
        ),
      Text(
        '${format[dateTime.weekday-1]}, ${months[dateTime.month]}',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white70,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            alignment: Alignment.center,
            child: Text(
              'Snooze', style: TextStyle(color: Colors.white, fontSize: 18),),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 40,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white70,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            alignment: Alignment.center,
            child: Text(
              'Dismiss', style: TextStyle(color: Colors.white, fontSize: 18),),
          ),
        ],
      )
      ],
    ),)
    ,
    )
    ,
    )
    ,
    );
  }
}
String? day;
DateTime dateTime = DateTime.now();
