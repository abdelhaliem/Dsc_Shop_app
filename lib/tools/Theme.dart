import 'package:dsc_shop/model/items.dart';
import 'package:flutter/material.dart';

class ThemeChenger with ChangeNotifier {
  ///basket=============
  List<ItemModel> items = [];
  int _count = 0;
  void addCount() {
    _count++;
    notifyListeners();
  }

  void addItems(ItemModel data) {
    items.add(data);
    notifyListeners();
  }

  int get count {
    return _count;
  }

  List<ItemModel> get itemsList {
    return items;
  }

  ///basket==================
  ///fav=====================
  List<ItemModel> itemsfav = [];
  int _countfav = 0;

  void addCountFav() {
    _count++;
    notifyListeners();
  }

  void addItemsFav(ItemModel data) {
    itemsfav.add(data);
    notifyListeners();
  }

  int get countFav {
    return _count;
  }

  List<ItemModel> get itemsListFav {
    return itemsfav;
  }

  /// fav========================
  /// theme ======================
  ThemeData _themeData;
  ThemeChenger(
    this._themeData,
  );
  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  ///theme ======================
}
