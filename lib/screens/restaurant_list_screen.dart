import 'package:flutter/material.dart';
import '../data/dummy_data_restaurant.dart';
import '../components/restaurant_list.dart';

class RestaurantListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 7),
      child: Column(
        children: Dummy_Restaurant.map((res) {
          return RestaurantList(
            restaurant: res,
          );
        }).toList(),
      ),
    );
  }
}
