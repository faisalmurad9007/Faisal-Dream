import 'dart:convert';

import 'package:faisal_dream/API%20Integration/Crud/MODEL/productModel.dart';
import 'package:http/http.dart' as http;

import 'Utils/urls.dart';

class ProductController{
  List<Data>products = [];
  bool isLoading = true;

  Future fetchProducts() async {
    final response = await http.get(Uri.parse(Urls.readProduct));

    if (response.statusCode == 200){
       isLoading = false;
      final data = jsonDecode(response.body);
      ProductModel model = ProductModel.fromJson(data);
      products = model.data ??[];

    }

  }
}