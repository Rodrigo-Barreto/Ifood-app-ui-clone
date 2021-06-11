import 'package:flutter/material.dart';
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
                  preferredSize: Size(200, 050),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
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
                              )),
                              Tab(
                                  child: Text(
                                "Mercados",
                                style: TextStyle(fontSize: 18),
                              )),
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
