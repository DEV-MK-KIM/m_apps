import 'package:flutter/material.dart';
import 'package:meal_app/screen/favorites_screen.dart';

import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0, // default index (0 is set by default)
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Category',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorite',
              ),
            ],
          ),
        ),
        body: TabBarView(
          // order of children should match that of above tabs
          children: [
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
