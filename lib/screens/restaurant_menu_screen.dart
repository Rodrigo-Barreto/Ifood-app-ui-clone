import 'package:flutter/material.dart';

import '../models/shops.dart';
import '../components/restaurant_menu_item.dart';
import '../models/menuitem.dart';
import '../provider/menuitem.dart';
import 'package:provider/provider.dart';

class RestaurantPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final restaurant = ModalRoute.of(context).settings.arguments as Shops;
    final List<MenuItem> menuItems = Provider.of<MenuItemList>(context).items;

    var menu = menuItems.where((element) {
      return element.idShops.contains(restaurant.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: restaurant.color,
        title: Text(restaurant.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (ctx, index) {
          return RestaurantMenuItem(
            menuItem: menu[index],
          );
        },
      ),
    );
  }
}
