import 'package:flutter/material.dart';
import 'package:ifood/models/shops.dart';

import 'package:ifood/screens/category_search_screen.dart';
import 'package:provider/provider.dart';
import '../screens/home_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List navigatorButtonRoutes;

  void initState() {
    super.initState();
    navigatorButtonRoutes = [
      HomeScreen(),
      CategorySearchScreen(),
      CategorySearchScreen(),
      CategorySearchScreen(),
    ];
  }

  int currentTabIndex = 0;
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigatorButtonRoutes[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: currentTabIndex,
        iconSize: 20,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Busca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          )
        ],
      ),
    );
  }
}
