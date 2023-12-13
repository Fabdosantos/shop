import 'package:flutter/widgets.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  final List<Product> _items = dummyProducts;
  List<Product> get items => [..._items];

  void addproducts(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
