 import 'package:flutter/material.dart';

 void main() {
  runApp(const MyApp());
 }

 class MyApp extends StatelessWidget{
   const MyApp({Key?key}) : super(key : key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amberAccent,
        )
      ),
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Welcome'),
        ),
                floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('clicked'),
          child: const Icon(Icons.ac_unit), 
          ),
        body: Container(
          color: Colors.yellow,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  const Text('Freelance 1'),
                  Container(
                    height: 60,
                    width: 40,
                    color: Colors.red,
                  ),
                ],
              ),
              Container(
                color: const Color.fromARGB(255, 247, 71, 6),
                
                child: const Text(
                  'First Column Child',
                ),
              ),
              const SizedBox(
                height: 20,
                width: 300,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
              ),

              Container(
                color: Color.fromARGB(255, 151, 177, 3),
                child: const Text(
                  'Second Column Child',
                ),
              ),
              const SizedBox(
                height: 20,
                width: 300,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
 }