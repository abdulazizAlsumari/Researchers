import 'package:flutter/material.dart';
import 'package:recearcher/screen/signUp.dart';

void main() {
  runApp(RecApp());
}
class RecApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        // Define the default brightness and colors.
//        brightness: Brightness.dark,
//        primaryColor: Colors.lightBlue[300],
//        accentColor: Colors.cyan[200],

        // Define the default font family.
        fontFamily: 'Montserrat',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
        headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),)),
      debugShowCheckedModeBanner: false,
      home: signUp(),
    );
  }


}