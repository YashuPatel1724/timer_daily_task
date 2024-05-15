import 'package:flutter/material.dart';
import 'package:timer_daily_task/Analod%20Clock/analog_clock.dart';
import 'package:timer_daily_task/Digital%20Clock/digital.dart';
import 'package:timer_daily_task/Stop%20watch/stopclock.dart';
import 'package:timer_daily_task/strap%20watch/strap_watch.dart';

import 'Buttons/button.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/stop',
      routes: {
        '/' : (context) => DigitalClock(),
        '/ana' : (context) => AnalogClock(),
        '/strap' : (context) => StrapClock(),
        '/stop' : (context) => StopClock(),

      },
    );
  }
}
