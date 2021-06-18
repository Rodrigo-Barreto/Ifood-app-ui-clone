import 'package:flutter/material.dart';

class Shops {
  final String id;
  final String title;
  final Color color;
  final String adress;
  final String category;

  const Shops({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
    @required this.adress,
    @required this.category,
  });
}
