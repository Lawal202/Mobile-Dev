import 'package:flutter/material.dart';
import 'package:assignment/product_model.dart';
import 'package:assignment/product_service.dart';

void main () {
runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final productService = ProductService('https://fakestoreapi.com/products');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
        ),
        body: FutureBuilder<List<Product>>(
          future: productService.getProducts(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index){
                  final product = snapshot.data![index];
                  return ListTile(
                    title: Text(product.title),
                    subtitle: Text('\$${product.price.toString()}'),
                  );
                },
              );
            }else if(snapshot.hasError){
              return Text('Error: ${snapshot.error}');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

