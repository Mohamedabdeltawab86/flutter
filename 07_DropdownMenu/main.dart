import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String letter = 'A';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: Container(
        // width: 800,
        // color: Colors.black,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        child: DropdownButton(
            icon: const Icon(Icons.cached_outlined, color: Colors.red),
            hint: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(right: 20),
              child: const Text(
                'اختر حرفا مما يلي',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
              ),
            ),
            dropdownColor: Colors.amber[100],
            underline: const Divider(
              thickness: 0,
            ),
            isExpanded: true,
            items: ['A', 'B', 'C']
                .map((e) => DropdownMenuItem(
                      child: Text(e,
                          style:
                              const TextStyle(fontSize: 30, color: Colors.red)),
                      value: e,
                    ))
                .toList(),
            onChanged: (String? val) {
              setState(() {
                letter = val!;
              });
            }),
      ),
    ));
  }
}
