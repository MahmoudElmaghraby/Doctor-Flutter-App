import 'package:doctor_flutter_app/core/contants.dart';
import 'package:doctor_flutter_app/models/cat_model.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  List<CatModel> catList = CatModel.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        shadowColor: Colors.transparent,
        leading: Icon(
          Icons.reorder,
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
      body: Container(
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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCatWidget('assets/profile_img.png', 'Dental', 26),
                  _buildCatWidget('assets/profile_img.png', 'Heart', 18),
                  _buildCatWidget('assets/profile_img.png', 'Brain', 32),
                  _buildCatWidget('assets/profile_img.png', 'Bone', 35),
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
          Image(
            // image: AssetImage('assets/profile_img.png'),
            image: AssetImage(imagePath),
            width: 100,
            height: 60,
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
