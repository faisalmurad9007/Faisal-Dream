import 'dart:convert';
import 'package:faisal_dream/API Integration/Crud/MODEL/productModel.dart';
import 'package:faisal_dream/API Integration/Crud/productcontroller.dart';
import 'package:flutter/material.dart';

import 'Crud/ProductDetailPage.dart';

class CRUD extends StatefulWidget {
  const CRUD({super.key});

  @override
  State<CRUD> createState() => _CRUDState();
}

class _CRUDState extends State<CRUD> {
  ProductController productController = ProductController();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    await productController.fetchProducts();
    if (mounted) setState(() {});
  }

  // ----------------------------
  // PRODUCT ADD / EDIT DIALOG
  // ----------------------------
  productDialog({Data? product}) {
    final TextEditingController name = TextEditingController(text: product?.productName ?? "");
    final TextEditingController img = TextEditingController(text: product?.img ?? "");
    final TextEditingController qty = TextEditingController(text: product?.qty?.toString() ?? "");
    final TextEditingController unitPrice = TextEditingController(text: product?.unitPrice?.toString() ?? "");
    final TextEditingController totalPrice = TextEditingController(text: product?.totalPrice?.toString() ?? "");

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(product == null ? "Add Product" : "Edit Product"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: name, decoration: InputDecoration(labelText: "Name")),
              SizedBox(height: 8),
              TextField(controller: img, decoration: InputDecoration(labelText: "Image URL")),
              SizedBox(height: 8),
              TextField(controller: qty, decoration: InputDecoration(labelText: "Quantity")),
              SizedBox(height: 8),
              TextField(controller: unitPrice, decoration: InputDecoration(labelText: "Unit Price")),
              SizedBox(height: 8),
              TextField(controller: totalPrice, decoration: InputDecoration(labelText: "Total Price")),
              SizedBox(height: 8),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),

          ElevatedButton(
            onPressed: () async {
              Data newData = Data(
                sId: product?.sId,
                productName: name.text,
                img: img.text,
                qty: int.tryParse(qty.text),
                unitPrice: int.tryParse(unitPrice.text),
                totalPrice: int.tryParse(totalPrice.text),
              );

              if (product == null) {
                // ADD
                await productController.createProduct(newData);
              } else {
                // UPDATE
                await productController.updateProduct(newData);
              }

              await fetchData();
              Navigator.pop(context);
            },
            child: Text(
              product == null ? "Save" : "Update",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------------
  // PRODUCT DETAIL PAGE
  // ---------------------
  void openDetails(Data product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsPage(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[300],
        title: Text("Product from API"),
      ),

      body: productController.isLoading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
        ),
        itemCount: productController.products.length,
        itemBuilder: (context, index) {
          final item = productController.products[index];

          return GestureDetector(
            onTap: () => openDetails(item),

            child: Card(
              child: Column(
                children: [
                  SizedBox(
                    height: 140,
                    child: Image.network(item.img ?? "", fit: BoxFit.cover),
                  ),
                  Text(
                    item.productName ?? "",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text("Price: \$${item.unitPrice} | QTY: ${item.qty}"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => productDialog(product: item),
                        icon: Icon(Icons.edit, color: Colors.orange),
                      ),

                      IconButton(
                        onPressed: () async {
                          bool deleted = await productController.deleteProduct(item.sId.toString());

                          if (deleted) {
                            await fetchData();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Product Deleted")),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Something went wrong")),
                            );
                          }
                        },
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => productDialog(),
        child: Icon(Icons.add, color: Colors.blue),
      ),
    );
  }
}
