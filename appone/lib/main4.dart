import 'package:flutter/material.dart';

void main() {
  runApp(MyStatefulApp());

}

class MyStatefulApp extends StatefulWidget {
@override

_MyStatefulAppState createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp>{
int _counter = 0;
void _incrementCounter(){
  setState((){
    _counter++;
  });
}

void _decrementCounter(){
  setState((){
    _counter--;
  });
}

@override
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Counter: $_counter'),
          ElevatedButton(
            onPressed: _incrementCounter, 
            child: Text('Increment')),
          ElevatedButton(
            onPressed: _decrementCounter, 
            child: Text('Decrement')),
        ],
      ),
     ),
    ),
  );
}
}