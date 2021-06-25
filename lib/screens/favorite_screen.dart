import 'package:flutter/material.dart';
import 'package:ifood/models/shops.dart';
import 'package:ifood/provider/favorites.dart';
import 'package:provider/provider.dart';
import '../components/shop_card_item.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Shops> favorites = Provider.of<Favorites>(context).favorits;
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: Column(
          children: favorites.map((res) {
        return RestaurantList(
          restaurant: res,
        );
      }).toList()),
    );
  }
}
