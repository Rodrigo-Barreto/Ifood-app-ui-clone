import 'package:flutter/material.dart';
import '../models/shops.dart';
import '../data/dummy_data.dart';

class ShopsList with ChangeNotifier {
  List<Shops> _items = Dummy_Data_Shops;

  List<Shops> get items => [..._items];
}
