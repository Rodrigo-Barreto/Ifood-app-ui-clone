import 'package:flutter/material.dart';
import 'package:ifood/models/shops.dart';

import 'package:ifood/screens/favorite_screen.dart';
import 'package:ifood/utils/app_routes.dart';
import 'package:ifood/utils/push_page_arguments.dart';
import '../screens/restaurant_list_screen.dart';
import '../screens/market_list_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int currentTabIndex = 0;
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  TabController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                pinned: false,
                snap: true,
                floating: true,
                actions: [
                  IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      onPressed: () => pushPageArguments(
                            context,
                            AppRoutes.FavoriteScreen,
                          )),
                  IconButton(
                      icon: Icon(
                        Icons.qr_code_scanner_outlined,
                        color: Colors.red,
                      ),
                      onPressed: () {})
                ],
                title: Row(
                  children: [
                    Text(
                      'R. Catharina Bazzo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.red,
                    )
                  ],
                ),
                backgroundColor: Colors.white,
                bottom: PreferredSize(
                  preferredSize: Size(400, 50),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 400,
                          child: TabBar(
                            isScrollable: true,
                            indicatorColor: Colors.red,
                            labelColor: Colors.red,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Tab(
                                child: Text(
                                  "Restaurantes",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Mercados",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              RestaurantListScreen(),
              MarketScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
