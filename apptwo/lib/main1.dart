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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text(
            "Basics of Flutter",
            style: TextStyle(
              color: Color.fromARGB(255, 46, 37, 37),
              fontSize: 35,
            ),
            ),
        ),
        body: Container(
          color: Colors.grey,


          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.amber,
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("First Column Child"),
                ),
              ),
              const SizedBox(
                height: 20,
                width: 40,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueGrey,
                  ),
                  child: const Text(
                    "Second Column Child",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                    ),
                  ),
                ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Padding(
                padding: EdgeInsets.all(50),
                child: Text("Last Column Child"),
              ),
            ),
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=> debugPrint('Pressed'),
          child: const Icon(Icons.abc_sharp), 
          ),
      )
    );
  }
}