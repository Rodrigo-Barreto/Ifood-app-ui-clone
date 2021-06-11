import 'package:flutter/material.dart';
import '../data/dummy_data_categories.dart';

import '../components/restaurant_category_search.dart';

class CategorySearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: Dummy_Categories.map((cat) {
        return RestaurantCategorySearch(
          cat,
        );
      }).toList(),
    );
  }
}
