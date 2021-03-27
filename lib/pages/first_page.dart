import 'package:doctor_flutter_app/core/constants.dart';
import 'package:doctor_flutter_app/models/cat_model.dart';
import 'package:doctor_flutter_app/models/doctors_model.dart';
import 'package:doctor_flutter_app/pages/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  List<CatModel> catList = CatModel.list;
  List<DoctorsModel> docList = DoctorsModel.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset('assets/menu_icon.png'),
          onPressed: () {},
        ),
        actions: [
          Icon(Icons.notifications_active),
          SizedBox(width: 15),
          Image.asset(
            'assets/profile_img.png',
            width: 30,
            height: 30,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.only(top: 16.0),
            decoration: BoxDecoration(
              color: AppColors.darkWhiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Hi, Olivia',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: catList.length,
                    itemBuilder: (context, index) {
                      CatModel catModel = catList[index];
                      return _buildCatWidget(
                        catModel.imgPath,
                        catModel.name,
                        catModel.numOfDoctors,
                      );
                    },
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top rate',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    primary: false,
                    itemCount: docList.length,
                    itemBuilder: (context, index) {
                      DoctorsModel docModel = docList[index];
                      return _buildDoctorListItem(
                        docModel.docImg,
                        docModel.docName,
                        docModel.docSpecialization,
                        docModel.docRate,
                        docModel.distance,
                        context,
                        docModel,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorListItem(
    String img,
    String name,
    String specialization,
    double rate,
    double dist,
    BuildContext context,
    DoctorsModel docModel,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => SecondPage(
              doctorsModel: docModel,
            ),
          ),
        );
      },
      child: Card(
        child: Row(
          children: [
            Image.asset(
              img,
              height: 80,
              width: 80,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                top: 16.0,
                bottom: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        specialization,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Icon(
                          Icons.star,
                          color: AppColors.yellowColor,
                          size: 14.0,
                        ),
                      ),
                      Text(
                        '${rate}',
                        style: TextStyle(fontSize: 10.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.location_on_sharp,
                          color: AppColors.yellowColor,
                          size: 14.0,
                        ),
                      ),
                      Text(
                        '${dist} KM',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCatWidget(String imagePath, String name, int doctorNum) {
    return Container(
      width: 130,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppColors.greenColor,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              '$doctorNum doctors',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
