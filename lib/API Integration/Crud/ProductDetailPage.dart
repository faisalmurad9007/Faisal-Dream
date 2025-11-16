import 'package:flutter/material.dart';
import 'package:faisal_dream/API Integration/Crud/MODEL/productModel.dart';

class ProductDetailsPage extends StatelessWidget {
  final Data product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: Text(product.productName ?? "Product Details"),
        backgroundColor: Colors.yellow[300],
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // PRODUCT IMAGE
            Center(
              child: Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 8, color: Colors.black12),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    product.img ?? "",
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, size: 100),
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            // NAME
            Text(
              product.productName ?? "No Name",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            // DETAILS CARD
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(blurRadius: 8, color: Colors.black12)],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  detailRow("Quantity", "${product.qty}"),
                  Divider(),
                  detailRow("Unit Price", "\$${product.unitPrice}"),
                  Divider(),
                  detailRow("Total Price", "\$${product.totalPrice}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // COMPONENT
  Widget detailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 18, color: Colors.black87)),
          Text(value, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
