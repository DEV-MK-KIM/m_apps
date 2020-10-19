import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      drawer: MainDrawer(), // it keeps pushing pages on stack without replacing
      body: Center(
        child: Text('filters'),
      ),
    );
  }
}
