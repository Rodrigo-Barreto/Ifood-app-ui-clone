import 'package:flutter/Material.dart';
import 'package:ifood/models/menuitem.dart';
import '../data/dummy_data.dart';

class MenuItemList extends ChangeNotifier {
  List<MenuItem> menuItem = Dummy_data_Menu;

  List<MenuItem> get items => [...menuItem];
}
