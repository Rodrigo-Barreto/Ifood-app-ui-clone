import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../components/shop_card_item.dart';

class RestaurantListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 7),
        child: Column(
          children: Dummy_Data_Shops.map((res) {
            return RestaurantList(
              restaurant: res,
            );
          }).toList(),
        ),
      ),
    );
  }
}
