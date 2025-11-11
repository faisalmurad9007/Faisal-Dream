import 'dart:convert';

import 'package:faisal_dream/API%20Integration/Crud/productcontroller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CRUD extends StatefulWidget {
  const CRUD({super.key});

  @override
  State<CRUD> createState() => _CRUDState();
}

class _CRUDState extends State<CRUD> {
  ProductController productController = ProductController();
  List products = [];


  @override
  void initState(){
    super.initState();
    fetchData();
  }

  Future fetchData() async {
     await productController.fetchProducts();
     if (mounted) setState(() {

     });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[300],
        title: Text('Product from API'),
      ),
      body: productController.isLoading ?
      Center(child:
      CircularProgressIndicator()) :
      GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 1
          ),
          itemCount: productController.products.length,
          itemBuilder: (context,index){
            final item = productController.products[index];
            return Card(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 140,
                      child: Image.network(item.img.toString()),
                    ),
                    Text(item.productName.toString(),
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('Price: \$${item.unitPrice} | QTY:${item.qty}')
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}