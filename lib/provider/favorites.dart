import 'package:flutter/material.dart';
import '../models/shops.dart';

class Favorites with ChangeNotifier {
  List<Shops> favorites = [];

  List<Shops> get favorits => favorites;

  void toggleFavorite(Shops shops) {
    favorites.contains(shops) ? favorites.remove(shops) : favorites.add(shops);
    notifyListeners();
  }
}
