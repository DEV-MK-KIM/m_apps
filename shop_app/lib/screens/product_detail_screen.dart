import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context).settings.arguments as String; // id
    return Scaffold(
      appBar: AppBar(
        title: Text('sample'),
      ),
    );
  }
}
