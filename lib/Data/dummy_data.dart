import 'package:flutter/foundation.dart';

import '../Models/item_furniture.dart';

class DummyData with ChangeNotifier {
  final List<ItemFurniture> _dummy = [
    ItemFurniture(
      id: 0,
      name: 'Irul Chair',
      type: 'Chair',
      maker: 'Seto Febriant',
      explain:
          'Crafted with a perfect construction by Seto Febriant and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Chair/irul_chair.png',
      price: 102.00,
      rate: 4.7,
      isfavorite: true,
    ),
    ItemFurniture(
      id: 1,
      name: 'Tall Lamp',
      type: 'Lamp',
      maker: 'Piet Mondrian',
      explain:
          'Crafted with a perfect construction by Piet Mondrian and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Lamp/tall_lamp.png',
      price: 20.00,
      rate: 1.9,
      isfavorite: false,
    ),
    ItemFurniture(
      id: 2,
      name: 'Clipart Chair',
      type: 'Chair',
      maker: 'Leonardo Da Vinci',
      explain:
          'Crafted with a perfect construction by Leonardo Da Vinci and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Chair/clipart_chair.png',
      price: 175.68,
      rate: 4.9,
      isfavorite: false,
    ),
    ItemFurniture(
      id: 3,
      name: 'Default Table',
      type: 'Table',
      maker: 'Albrecht Dürer',
      explain:
          'Crafted with a perfect construction by Albrecht Dürer and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Table/default_table.png',
      price: 120.56,
      rate: 3.9,
      isfavorite: true,
    ),
    ItemFurniture(
      id: 4,
      name: 'Bedroom Lamp',
      type: 'Lamp',
      maker: 'Van Gogh',
      explain:
          'Crafted with a perfect construction by Van Gogh and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Lamp/bedroom_lamp.png',
      price: 29.99,
      rate: 2.7,
      isfavorite: true,
    ),
    ItemFurniture(
      id: 5,
      name: 'Normal Chair',
      type: 'Chair',
      maker: 'Pablo Picasso',
      explain:
          'Crafted with a perfect construction by Pablo Picasso and have a balancing ergonomic for humans body, top quality leather in the black of the rest',
      image: 'Assets/Images/Chair/normal_chair.png',
      price: 79.99,
      rate: 4.2,
      isfavorite: false,
    ),
    ItemFurniture(
      id: 6,
      name: 'Tall Table',
      type: 'Table',
      maker: 'Lucian Freud',
      explain:
          'Crafted with a perfect construction by Lucian Freud and have a balancing ergonomic for humans body, top quality leather in the black of the rest',
      image: 'Assets/Images/Table/tall_table.png',
      price: 85.61,
      rate: 4.0,
      isfavorite: true,
    ),
    ItemFurniture(
      id: 7,
      name: 'Chinese Lamp',
      type: 'Lamp',
      maker: 'Johannes Vermeer',
      explain:
          'Crafted with a perfect construction by Johannes Vermeer and have a balancing ergonomic for humans body, top quality leather in the black of the rest',
      image: 'Assets/Images/Lamp/chinese_lamp.png',
      price: 48.18,
      rate: 4.7,
      isfavorite: true,
    ),
    ItemFurniture(
      id: 8,
      name: 'Pic Chair',
      type: 'Chair',
      maker: 'Giotto Di Bondone',
      explain:
          'Crafted with a perfect construction by Giotto Di Bondone and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Chair/pic_chair.png',
      price: 90.70,
      rate: 3.1,
      isfavorite: true,
    ),
    ItemFurniture(
      id: 9,
      name: 'Modern Lamp',
      type: 'Lamp',
      maker: 'Joan Miro',
      explain:
          'Crafted with a perfect construction by Joan Miro and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Lamp/modern_lamp.png',
      price: 27.99,
      rate: 4.3,
      isfavorite: false,
    ),
    ItemFurniture(
      id: 10,
      name: 'Tallest Table',
      type: 'Table',
      maker: 'Marc Chagall',
      explain:
          'Crafted with a perfect construction by Marc Chagall and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Table/tallest_table.png',
      price: 112.40,
      rate: 3.4,
      isfavorite: false,
    ),
    ItemFurniture(
      id: 11,
      name: 'Quality Chair',
      type: 'Chair',
      maker: 'Paul Cezanne',
      explain:
          'Crafted with a perfect construction by Paul Cezanne and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Chair/quality_chair.png',
      price: 130.00,
      rate: 4.5,
      isfavorite: true,
    ),
    ItemFurniture(
      id: 12,
      name: 'Bed Lamp',
      type: 'Lamp',
      maker: 'Van Eyck',
      explain:
          'Crafted with a perfect construction by Van Eyck and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Lamp/bed_lamp.png',
      price: 34.26,
      rate: 3.4,
      isfavorite: true,
    ),
    ItemFurniture(
      id: 13,
      name: 'Transparent Table',
      type: 'Table',
      maker: 'Gustav Klimt',
      explain:
          'Crafted with a perfect construction by Gustav Klimt and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Table/transparent_table.png',
      price: 189.99,
      rate: 4.9,
      isfavorite: true,
    ),
    ItemFurniture(
      id: 14,
      name: 'Transparent Chair',
      type: 'Chair',
      maker: 'Rembrandt Van Rijn',
      explain:
          'Crafted with a perfect construction by Rembrandt Van Rijn and have a balancing ergonomic for humans body, top quality leather in the black of the rest.',
      image: 'Assets/Images/Chair/transparent_chair.png',
      price: 112.6,
      rate: 3.7,
      isfavorite: true,
    ),
  ];

  int getItemsNumber() {
    return _dummy.length;
  }

  ItemFurniture getItemFromIndex(int index) {
    return _dummy.elementAt(index);
  }

  String getItemNameFromIndex(int index) {
    return _dummy.elementAt(index).name;
  }

  String getItemTypeFromIndex(int index) {
    return _dummy.elementAt(index).type;
  }

  String getItemMakerFromIndex(int index) {
    return _dummy.elementAt(index).maker;
  }

  String getItemExplainFromIndex(int index) {
    return _dummy.elementAt(index).explain;
  }

  String getItemImageFromIndex(int index) {
    return _dummy.elementAt(index).image;
  }

  double getItemPriceFromIndex(int index) {
    return _dummy.elementAt(index).price;
  }

  double getItemRateFromIndex(int index) {
    return _dummy.elementAt(index).rate;
  }

  bool isItemFavoriteFromIndex(int index) {
    return _dummy.elementAt(index).isfavorite;
  }

  bool isIteamAtTheSameType(int index, String title) {
    return title == "All" ? true : _dummy.elementAt(index).type == title;
  }

  void toggleFavoriteOfItemFromIndex(int index) {
    _dummy.elementAt(index).isfavorite = !_dummy.elementAt(index).isfavorite;
    notifyListeners();
  }
}
