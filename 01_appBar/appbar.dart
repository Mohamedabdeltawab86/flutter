import 'package:flutter/material.dart';

void main() {
  runApp(const AppBr());
}

class AppBr extends StatelessWidget {
  const AppBr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar Options'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: () {
              print('Navigation menu');
            },
          ),
          actions: const[
            Icon(Icons.search),
            Icon(Icons.add),
            Icon(Icons.more_vert),

          ],
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Hello, world!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
