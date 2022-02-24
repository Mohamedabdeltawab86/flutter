import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: const Drawer(),
        body: Container(
          width: 1200,
          height: 600,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              // invertColors: true,
              // filterQuality: FilterQuality.low,
              fit: BoxFit.scaleDown,
              image: AssetImage("images/google.png"),
              repeat: ImageRepeat.repeatX,
            ),
          ),
          child: const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
