import 'package:flutter/material.dart';
import 'package:ifood/components/filter_item.dart';
import 'package:ifood/models/shops.dart';
import 'package:ifood/provider/shops.dart';
import 'package:provider/provider.dart';

import '../components/shop_card_item.dart';

class RestaurantListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Shops> shops = Provider.of<ShopsList>(context).items;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 7),
        child: Column(
          children: [
            FilterItem(),
            Column(
              children: shops.map((res) {
                return RestaurantList(
                  restaurant: res,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
