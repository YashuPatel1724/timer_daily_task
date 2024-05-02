import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        home: buttonApp(),
    );
  }
}

class buttonApp extends StatefulWidget {
  const buttonApp({super.key});

  @override
  State<buttonApp> createState() => _buttonAppState();
}

class _buttonAppState extends State<buttonApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF8F3F9),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Elevated',
                    style: TextStyle(color: Colors.purple, fontSize: 25),
                  )),
              OutlinedButton(onPressed: () {

              }, child: Text(
                'Outlined',
                style: TextStyle(color: Colors.purple, fontSize: 25),
              ),),
              FloatingActionButton(onPressed: () {},child: Icon(Icons.add)),
              TextButton(onPressed: () {

              }, child: Text(
                'Text',
                style: TextStyle(color: Colors.purple, fontSize: 25),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
