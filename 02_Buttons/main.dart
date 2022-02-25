import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Butttons'),
            ),
            body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {}, child: Text("Flat Button")),
                        OutlineButton(
                            onPressed: () {}, child: Text("Outline Button")),
                        RaisedButton(
                            onPressed: () {}, child: Text("Raised Button")),
                      ]),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {}, child: Text("Text Button")),
                        OutlinedButton(
                            onPressed: () => print("Outlined Button"),
                            child: const Text("Outlined Button")),
                        ElevatedButton(
                            onPressed: () => print('Elevated Button'),
                            child: const Text("Elevated Button")),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Button Style => MaterialStateProperty',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          )),
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.fromLTRB(5, 0, 10, 10)),
                          elevation: MaterialStateProperty.all(5),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Elevated Button'),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_circle),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.remove_circle),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  FloatingActionButton(
                      onPressed: () {}, child: const Icon(Icons.add)),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      """
Deprecated Buttons

Flat > Text,
Raised > Elevated,
Outline > Outlined""",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          backgroundColor: Colors.white),
                    ),
                  ),
                ],
              ),
            )));
  }
}
