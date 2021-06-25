import 'package:flutter/material.dart';
import 'package:ifood/components/shop_card_item.dart';

import 'package:ifood/models/shops.dart';
import 'package:ifood/provider/shops.dart';
import 'package:provider/provider.dart';

class MarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Shops> shops = Provider.of<ShopsList>(context).items;
    var market = shops.where((element) {
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
