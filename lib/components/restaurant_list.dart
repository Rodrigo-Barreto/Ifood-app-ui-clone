import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import '../utils/app_routes.dart';
import '../utils/push_page_arguments.dart';

class RestaurantList extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantList({this.restaurant});
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
                  backgroundColor: restaurant.color,
                  radius: 30,
                ),
                title: Text(restaurant.title),
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
                        Text(restaurant.category + ' 3,6 km'),
                      ],
                    ),
                    Text('48-58 min - R\$ 8,90'),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                    print(restaurant.id);
                  },
                ),
                onTap: () => pushPageArguments(
                    context, AppRoutes.RestaurantPage, restaurant)),
          ),
        ),
      ],
    );
  }
}
