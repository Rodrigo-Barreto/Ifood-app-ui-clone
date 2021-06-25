import 'package:flutter/material.dart';
import '../models/menuitem.dart';

class RestaurantMenuItem extends StatelessWidget {
  MenuItem menuItem;
  RestaurantMenuItem({this.menuItem});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: InkWell(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 180,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            menuItem.title,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          Text(menuItem.description),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                ' R\$ ${menuItem.price}',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.green),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.network(
                        menuItem.imageUrl,
                        fit: BoxFit.cover,
                        height: 95,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              print('oioio');
            },
          ),
        ),
      ],
    );
  }
}
