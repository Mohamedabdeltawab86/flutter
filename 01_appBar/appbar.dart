import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: const Text(
              'Glutter Demo',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            leading: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            actions: const [
              Icon(
                Icons.place_outlined,
                color: Colors.amber,
              ),
              Icon(
                Icons.place_rounded,
                color: Colors.amber,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Hello World',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    letterSpacing: 1,
                    height: 2,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ),
                    ],

                  ),
                ),
                const Icon(Icons.android),
              ],
            ),
          ),
        ));
  }
}
