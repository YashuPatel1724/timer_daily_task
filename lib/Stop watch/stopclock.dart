import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/global.dart';

class StopClock extends StatefulWidget {
  const StopClock({super.key});

  @override
  State<StopClock> createState() => _StopClockState();
}

class _StopClockState extends State<StopClock> {
  Stopwatch stopwatch = Stopwatch();
  @override
  Widget build(BuildContext context) {

    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        stopwatch.elapsed.inSeconds;
      });
    });
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Stop Watch',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 5),
                ),
                alignment: Alignment.center,
                child: Text(
                  '${stopwatch.elapsed.inSeconds}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (stopwatch.isRunning) {
                          stopwatch.stop();
                          running = true;
                        } else {
                          stopwatch.start();
                          running = false;
                        }
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 5),
                      ),
                      alignment: Alignment.center,
                      child: (running==false)
                          ? Icon(
                              CupertinoIcons.stop_fill,
                              color: Colors.white,
                              size: 35,
                            )
                          : Icon(
                              CupertinoIcons.play_arrow_solid,
                              color: Colors.white,
                              size: 35,
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        stopwatch.reset();
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 5),
                      ),
                      child: Icon(
                        CupertinoIcons.restart,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(10.0),
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
                          borderRadius:BorderRadius.circular(10)
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
                          borderRadius:BorderRadius.circular(10)
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
                          color: Colors.blue,
                          borderRadius:BorderRadius.circular(10)
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
                          borderRadius:BorderRadius.circular(10)
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
            )
          ],
        ),
      ),
    );
  }
}
