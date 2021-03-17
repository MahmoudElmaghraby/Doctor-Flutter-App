import 'package:flutter/material.dart';

class CatModel{
  final String imgPath;
  final String name;
  final int numOfDoctors;

  CatModel({this.imgPath, this.name, this.numOfDoctors});

  static List<CatModel> list= [
    CatModel(
      imgPath: 'cat1.png',
      name: 'Dental',
      numOfDoctors: 26,
    ),
    CatModel(
      imgPath: 'cat1.png',
      name: 'Heart',
      numOfDoctors: 18,
    ),
    CatModel(
      imgPath: 'cat1.png',
      name: 'Brain',
      numOfDoctors: 32,
    ),
    CatModel(
      imgPath: 'cat1.png',
      name: 'Bone',
      numOfDoctors: 36,
    ),
  ];


}