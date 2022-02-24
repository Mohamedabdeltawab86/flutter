import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;
  // function to increase the counter
  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              MaterialButton(
                height: 50,
                minWidth: 500,
                shape: Border.all(width: 3, color: Colors.black),
                color: Colors.amber,
                onPressed: () {
                  _incrementCounter();
                },
                child: Text(
                  'Button',
                  style: GoogleFonts.sansita(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              // pass the counter to the child widget
              const SizedBox(
                height: 50,
              ),
              Text(
                '$_count',
                style: GoogleFonts.alegreyaSc(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
