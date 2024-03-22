import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key?key}) : super (key:key);

@override
Widget build(BuildContext context){
  return MaterialApp(
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 224, 204, 204),
      )
    ),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 115, 224, 7),
      appBar: AppBar(
        centerTitle: true,
        title: const Text ('flutter free test'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('clicked'),
        child: const Icon(Icons.ac_unit_sharp), 
        ),
        body: const Center(
          child: Text('Yes its my practice run to become a flutter dev'),
          ),
    ),
  );
}
}