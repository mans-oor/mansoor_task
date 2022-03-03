import 'package:flutter/material.dart';

class ListModel {
  final String? tittle, user;
  final IconData? iconData;
  final int id;

  ListModel({this.tittle, this.user, required this.id, this.iconData});
}

List list = [
  ListModel(id: 1, tittle: "Main Category1", iconData: Icons.favorite_border),
  ListModel(id: 2, tittle: "Main Category2", iconData: Icons.favorite_border),
  ListModel(id: 3, tittle: "Main Category3", iconData: Icons.favorite_border),
  ListModel(id: 4, tittle: "Main Category4", iconData: Icons.favorite_border),
];
