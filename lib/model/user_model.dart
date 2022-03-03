import 'package:flutter/material.dart';

class UserModel {
  final String? tittle, user;
  final IconData? iconData;
  final int id;

  UserModel({this.tittle, this.user, required this.id, this.iconData});
}

List userList = [
  UserModel(
      id: 1,
      tittle: "Main Category1",
      iconData: Icons.favorite_border,
      user: "@_User1"),
  UserModel(
      id: 2,
      tittle: "Main Category2",
      iconData: Icons.favorite_border,
      user: "@_User2"),
  UserModel(
      id: 3,
      tittle: "Main Category3",
      iconData: Icons.favorite_border,
      user: "@_User3"),
  UserModel(
      id: 4,
      tittle: "Main Category4",
      iconData: Icons.favorite_border,
      user: "@_User4"),
  UserModel(
      id: 5,
      tittle: "Main Category4",
      iconData: Icons.favorite_border,
      user: "@_User5"),
];
