import 'package:flutter/material.dart';

class MenuItem {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String idShops;
  final double price;

  const MenuItem(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.imageUrl,
      @required this.idShops,
      this.price});
}
