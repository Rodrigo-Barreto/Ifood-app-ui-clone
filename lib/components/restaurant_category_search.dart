import 'package:flutter/material.dart';
import '../models/category.dart';
import '../utils/push_page_arguments.dart';
import '../utils/app_routes.dart';

class RestaurantCategorySearch extends StatelessWidget {
  final Category category;
  RestaurantCategorySearch(this.category);

  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () =>
            pushPageArguments(context, AppRoutes.CategoryScreen, category),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 100,
          child: Text(category.title),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
              begin: Alignment.centerLeft,
              colors: [
                category.color.withOpacity(0.7),
                category.color,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
