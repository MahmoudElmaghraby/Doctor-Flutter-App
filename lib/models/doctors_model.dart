import 'package:flutter/material.dart';

class DoctorsModel {
  final String docImg;
  final String docName;
  final String docSpecialization;
  final double docRate;
  final double distance;

  DoctorsModel({
    this.docImg,
    this.docName,
    this.docSpecialization,
    this.docRate,
    this.distance,
  });

  static List<DoctorsModel> list = [
    DoctorsModel(
      docImg: 'assets/doc_s1.png',
      docName: 'Dr. Fred Mask',
      docSpecialization: 'Heart surgen',
      docRate: 4.9,
      distance: 5.3,
    ),
    DoctorsModel(
      docImg: 'assets/doc_s2.png',
      docName: 'Dr. Stella Kane ',
      docSpecialization: 'Bone Specialist',
      docRate: 4.5,
      distance: 3.1,
    ),
    DoctorsModel(
      docImg: 'assets/doc_s3.png',
      docName: 'Dr. Zac Wolff',
      docSpecialization: 'Eyes Specialist',
      docRate: 2.0,
      distance: 4.6,
    ),
  ];
}
