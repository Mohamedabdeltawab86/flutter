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
            title: const Text('Glutter Demo'),
            centerTitle: true,
            leading: const Icon(Icons.home),
            actions: const [
              Icon(Icons.place_outlined),
              Icon(Icons.place_rounded),
            ],
          ),
          body: const Text('Hello World'),
        ));
  }
}
