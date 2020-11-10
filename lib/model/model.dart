import 'package:flutter/material.dart';

class KhiladiModel {
  String id;
  String title;
  String description;
  String image;
  KhiladiModel({this.id, this.title, this.description, this.image});

  KhiladiModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
  }
}
