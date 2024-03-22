import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 180, 174, 158),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Basics of Flutter",
            style: TextStyle(
              color: Color.fromARGB(255, 37, 46, 40),
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
              Column(
                children: [
                  const Text('Asuquo Ukpong - Freelancer for flutter'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                        child: Image.asset('images/123.jpg'),
                   
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.brown,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Text('Male'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 70,
                        width: 30,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      // Corrected the Image.asset path
                      Image.asset('assets/123.jpg', height: 70, width: 30),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  // Corrected the NetworkImage URL
                  backgroundImage: NetworkImage(
                      'https://cdn.mos.cms.futurecdn.net/4cRYevgTo777BHFUutoHbP.jpg'),
                ),
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
                  child: Image(image: AssetImage("images/123.jpg"),),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('Clicked'),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
