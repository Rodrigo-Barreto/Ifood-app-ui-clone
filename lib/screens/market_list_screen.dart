import 'package:flutter/material.dart';
import 'package:ifood/components/shop_card_item.dart';
import 'package:ifood/data/dummy_data.dart';

class MarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var market = Dummy_Data_Shops.where((element) {
      return element.category.contains('Mercado');
    }).toList();

    return Scaffold(
      body: ListView.builder(
          itemCount: market.length,
          itemBuilder: (ctx, index) {
            return RestaurantList(
              restaurant: market[index],
            );
          }),
    );
  }
}
