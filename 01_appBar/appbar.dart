import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          body: const Center(
              child: Text(
            'Hello World',
            style: TextStyle(fontSize: 30, color: Colors.black),
          )),
        ));
  }
}
