import 'package:flutter/material.dart';
import 'package:ifood/provider/favorites.dart';
import 'package:provider/provider.dart';
import '../models/shops.dart';
import '../utils/app_routes.dart';
import '../utils/push_page_arguments.dart';

class RestaurantList extends StatefulWidget {
  final Shops restaurant;

  RestaurantList({this.restaurant});

  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: widget.restaurant.color,
                  radius: 30,
                ),
                title: Text(widget.restaurant.title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          ' 4.4 -',
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                        Text(widget.restaurant.category + ' 3,6 km'),
                      ],
                    ),
                    Text('48-58 min - R\$ 8,90'),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(
                    Provider.of<Favorites>(context)
                            .favorits
                            .contains(widget.restaurant)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () =>
                      Provider.of<Favorites>(context, listen: false)
                          .toggleFavorite(
                    widget.restaurant,
                  ),
                ),
                onTap: () => pushPageArguments(
                    context, AppRoutes.RestaurantPage, widget.restaurant)),
          ),
        ),
      ],
    );
  }
}
