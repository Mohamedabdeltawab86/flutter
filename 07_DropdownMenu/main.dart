import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedCountry = 'EG';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Butttons'),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: DropdownButton(
          items: [
            'USA',
            'EG',
            'SA',
            'UK',
            'FR',
          ]
              .map((e) => DropdownMenuItem(
                    child: Text("$e", style: TextStyle(fontSize: 20)),
                    value: e,
                  ))
              .toList(),
          onChanged: (String? val) {
            setState(() {
              selectedCountry = val!;
            });
          },
          value: selectedCountry,
        ),
        ),
      ),
    );
  }
}
