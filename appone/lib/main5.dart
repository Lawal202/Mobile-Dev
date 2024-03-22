import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyCounterApp(),
    );
  }
}

class MyCounterApp extends StatefulWidget{
  @override
  _MyCounterAppState createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp>{
  int _counter = 0;

  void _incrementCounter(){
    setState((){
      _counter++;
    });
  }
  
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Counter: $_counter',
            style: const TextStyle(fontSize: 20),
            ),
            SizedBox(
             height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _decrementCounter,
                 child: Text('Decrement'),
                 ),
                 SizedBox(width: 20),
                 ElevatedButton(onPressed: _incrementCounter, 
                 child: Text('Increment'),
                 ),
              ],
            )
          ],
        )
      ),
    );
  }
}

