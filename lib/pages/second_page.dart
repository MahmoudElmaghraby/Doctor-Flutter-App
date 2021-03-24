import 'package:doctor_flutter_app/core/contants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.notifications_active),
          SizedBox(width: 15),
        ],
        backgroundColor: AppColors.blueColor,
        shadowColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.18,
            decoration: BoxDecoration(
              color: AppColors.blueColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 15),
                Image.asset(
                  'assets/doc_s1.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Fred Mask',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Heart surgen',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white54,
                      ),
                    ),
                    SizedBox(height: 10),
                    RatingBar.builder(
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (_) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            color: AppColors.darkWhiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'April 2020',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildData('Mon', '21', true),
                      _buildData('Tue', '22', false),
                      _buildData('Wed', '23', false),
                      _buildData('Thu', '24', false),
                      _buildData('Fri', '25', false),
                      _buildData('Tue', '26', false),
                      _buildData('Tue', '27', false),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Morning',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildClockTime('08:30 AM', false),
                        _buildClockTime('09:00 AM', true),
                        _buildClockTime('09:30 AM', false),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildClockTime('10:00 AM', false),
                        _buildClockTime('10:30 AM', false),
                        _buildClockTime('11:00 AM', false),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Evening',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildClockTime('08:30 AM', false),
                        _buildClockTime('09:00 AM', false),
                        _buildClockTime('09:30 AM', false),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildClockTime('10:00 AM', false),
                        _buildClockTime('10:30 AM', false),
                        _buildClockTime('11:00 AM', false),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: RaisedButton(
                    color: AppColors.greenColor,
                    padding: EdgeInsets.all(16.0),
                    onPressed: () {},
                    child: Text(
                      'Make An Appointment',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClockTime(String text, bool selected) {
    return Container(
      height: 45,
      width: 100,
      decoration: BoxDecoration(
        color: selected ? AppColors.greenColor : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_clock,
            color: selected ? Colors.white : Colors.black,
          ),
          SizedBox(width: 5.0),
          Text(
            text,
            style: TextStyle(
              color: selected ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildData(
    String month,
    String day,
    bool selected,
  ) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 110,
          decoration: BoxDecoration(
            color: selected ? AppColors.greenColor : Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                month,
                style: TextStyle(
                  fontSize: 20.0,
                  color: selected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                day,
                style: TextStyle(
                  fontSize: 20.0,
                  color: selected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
