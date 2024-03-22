// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main(){
  runApp(MyCommonWidgetApp());
}

class MyCommonWidgetApp extends StatelessWidget{
  const MyCommonWidgetApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Common Widget example'),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
              child: const Center(
                child: Text('Container')
              ),
            ),
            const SizedBox(height: 50,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Item 1'),
                Text('Item 2'),
                Text('Item 3'),
              ],
            ),
            // ListView(
            //   children: [
            //     ListTile(title: Text('List Item 1')),
            //     ListTile(title: Text('List Item 2')),
            //     ListTile(title: Text('List Item 3')),
            //   ]
            // ),
            // TextField(
            //   decoration: InputDecoration(labelText: 'Enter a text')
            // )
          ],
        ),
      ),
    );

  }
}