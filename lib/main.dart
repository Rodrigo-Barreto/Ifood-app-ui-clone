import 'package:flutter/material.dart';
import 'package:ifood/screens/home_screen.dart';
import 'utils/app_routes.dart';
import 'screens/restaurant_page_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/category_screen.dart';

void main() {
  runApp(IfoodClone());
}

class IfoodClone extends StatefulWidget {
  @override
  _IfoodCloneState createState() => _IfoodCloneState();
}

class _IfoodCloneState extends State<IfoodClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      },
    );
  }
}
