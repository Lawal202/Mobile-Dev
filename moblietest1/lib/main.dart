import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  Color.fromARGB(255, 255, 255, 21),
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          backgroundColor: Color.fromARGB(255, 1, 159, 85),
          title: const Text(
            "Welcome Class", 
            textAlign: TextAlign.right,
            ),
        ),
        body: const Center(
          child: Text('Hello Everyone and Welcome Be Proud you are coding flutter today',
          style: TextStyle(color: Colors.black, fontSize: 40),),
        ),
      ),
    );
  }
}

