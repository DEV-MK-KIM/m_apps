import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context).settings.arguments as String; // id
    final loadedProduct = Provider.of<Products>(
      context,
      listen:
          false, // whenever notify listener is invoked, this ProdcutDetailScreen does not get rebuilt  (not interested in updates)
    ).findById(productID);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
