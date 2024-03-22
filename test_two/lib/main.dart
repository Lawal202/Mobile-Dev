import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({Key? key}): super(key: key);

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.amber,
        ) 
      ),
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Basics of Flutter"),
        ),
        body:const Center(
          child: Text("Hello World"),
        ),
      )
    );
  }
}