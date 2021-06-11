import 'package:flutter/material.dart';
import 'package:ifood/components/restaurant_list.dart';

import '../models/category.dart';
import '../data/dummy_data_restaurant.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    var restaurant = Dummy_Restaurant.where((element) {
      return element.category.contains(category.title);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: category.color,
        title: Text(category.title),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: restaurant.length,
          itemBuilder: (ctx, index) {
            return RestaurantList(
              restaurant: restaurant[index],
            );
          }),
    );
  }
}
