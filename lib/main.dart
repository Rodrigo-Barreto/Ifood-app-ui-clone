import 'package:flutter/material.dart';
import 'package:ifood/provider/favorites.dart';
import 'package:ifood/provider/menuitem.dart';
import 'package:provider/provider.dart';
import 'package:ifood/screens/favorite_screen.dart';
import 'models/shops.dart';
import 'utils/app_routes.dart';
import 'screens/restaurant_menu_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/category_screen.dart';
import 'provider/shops.dart';

void main() {
  runApp(IfoodClone());
}

class IfoodClone extends StatefulWidget {
  @override
  _IfoodCloneState createState() => _IfoodCloneState();
}

class _IfoodCloneState extends State<IfoodClone> {
  final List<Shops> favoriteShops = [];

  void _togglefavorite(Shops restaurant) {
    setState(() {
      favoriteShops.contains(restaurant)
          ? favoriteShops.remove(restaurant)
          : favoriteShops.add(restaurant);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => ShopsList()),
        ChangeNotifierProvider(create: (ctx) => Favorites()),
        ChangeNotifierProvider(create: (ctx) => MenuItemList())
      ],
      child: MaterialApp(
        title: 'ifood',
        theme: ThemeData(
            textTheme: TextTheme(
              headline6: TextStyle(fontSize: 18),
            ),
            canvasColor: Colors.white),
        routes: {
          AppRoutes.Home: (ctx) => TabsScreen(),
          AppRoutes.RestaurantPage: (ctx) => RestaurantPageScreen(),
          AppRoutes.CategoryScreen: (ctx) => CategoryScreen(),
          AppRoutes.FavoriteScreen: (ctx) => FavoriteScreen(),
        },
      ),
    );
  }
}
