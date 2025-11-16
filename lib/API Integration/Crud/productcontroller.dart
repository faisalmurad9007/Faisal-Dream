import 'dart:convert';
import 'package:http/http.dart' as http;

import 'MODEL/productModel.dart';
import 'Utils/urls.dart';

class ProductController {
  List<Data> products = [];
  bool isLoading = true;

  // ---------------------------
  // READ PRODUCTS
  // ---------------------------
  Future fetchProducts() async {
    final response = await http.get(Uri.parse(Urls.readProduct));

    if (response.statusCode == 200) {
      isLoading = false;
      final data = jsonDecode(response.body);

      ProductModel model = ProductModel.fromJson(data);
      products = model.data ?? [];
    }
  }

  // ---------------------------
  // CREATE PRODUCT
  // ---------------------------
  Future<bool> createProduct(Data data) async {
    final response = await http.post(
      Uri.parse(Urls.createProduct),
      headers: { 'Content-Type': 'application/json' },
      body: jsonEncode({
        "ProductName": data.productName,
        "ProductCode": DateTime.now().microsecondsSinceEpoch,
        "Img": data.img,
        "Qty": data.qty,
        "UnitPrice": data.unitPrice,
        "TotalPrice": data.totalPrice,
      }),
    );

    print("CREATE: ${response.body}");

    return response.statusCode == 200;
  }

  // ---------------------------
  // DELETE PRODUCT
  // ---------------------------
  Future<bool> deleteProduct(String productId) async {
    final response = await http.get(Uri.parse(Urls.deleteProduct(productId)));

    print("DELETE: ${response.body}");

    return response.statusCode == 200;
  }

  // ---------------------------
  // UPDATE PRODUCT
  // ---------------------------
  Future<bool> updateProduct(Data data) async {

    final response = await http.post(
      Uri.parse(Urls.updateProduct(data.sId.toString())),   // <-- Important
      headers: { "Content-Type": "application/json" },

      body: jsonEncode({
        "ProductName": data.productName,
        "Img": data.img,
        "Qty": data.qty,
        "UnitPrice": data.unitPrice,
        "TotalPrice": data.totalPrice,
      }),
    );

    print("UPDATE: ${response.body}");

    return response.statusCode == 200;
  }
}
