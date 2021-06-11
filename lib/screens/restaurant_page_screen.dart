import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class RestaurantPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restaurant = ModalRoute.of(context).settings.arguments as Restaurant;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: restaurant.color,
        title: Text(restaurant.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(restaurant.category),
            Text(
              restaurant.adress,
            ),
          ],
        ),
      ),
    );
  }
}
