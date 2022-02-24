import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          color: Colors.red[50],
          width: 800,
          height: 500,
          margin: const EdgeInsets.only(top: 100, left: 100, right: 50),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'This course aims to teach everyone the basics of programming computers using Python. We cover the basics of how one constructs a program from a series of simple instructions in Python.  The course has no pre-requisites and avoids all but the simplest mathematics. Anyone with moderate computer experience should be able to master the materials in this course. This course will cover Chapters 1-5 of the textbook “Python for Everybody”.  Once a student completes this course, they will be ready to take more advanced programming courses. This course covers Python 3.',
              style: GoogleFonts.alegreya(
                fontSize: 22,
                color: Colors.black,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  height: 2,
                ),
              ),
              textAlign: TextAlign.justify,
              // maxLines: 30,
            ),
          ),
        ),
      ),
    );
  }
}
