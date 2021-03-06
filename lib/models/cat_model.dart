import 'package:flutter/material.dart';

class CatModel{
  final String imgPath;
  final String name;
  final int numOfDoctors;

  CatModel({this.imgPath, this.name, this.numOfDoctors});

  static List<CatModel> list= [
    CatModel(
      imgPath: 'assets/dental_icon.png',
      name: 'Dental',
      numOfDoctors: 26,
    ),
    CatModel(
      imgPath: 'assets/heart_icon.png',
      name: 'Heart',
      numOfDoctors: 18,
    ),
    CatModel(
      imgPath: 'assets/brain_icon.png',
      name: 'Brain',
      numOfDoctors: 32,
    ),
    CatModel(
      imgPath: 'assets/bone_icon.png',
      name: 'Bone',
      numOfDoctors: 36,
    ),
  ];


}