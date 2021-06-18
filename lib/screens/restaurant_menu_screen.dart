import 'package:flutter/material.dart';
import '../models/shops.dart';
import '../components/restaurant_menu_item.dart';

class RestaurantPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restaurant = ModalRoute.of(context).settings.arguments as Shops;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: restaurant.color,
        title: Text(restaurant.title),
        centerTitle: true,
      ),
      body: Center(
        child: RestaurantMenuItem(),
      ),
    );
  }
}
