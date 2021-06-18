import 'package:flutter/material.dart';
import 'package:ifood/components/shop_card_item.dart';

import '../models/category.dart';
import '../data/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    var restaurant = Dummy_Data_Shops.where((element) {
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
