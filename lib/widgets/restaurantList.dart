

import 'package:flutter/material.dart';

class RestaurantList extends StatefulWidget {
  RestaurantList(
      {super.key,
      required this.restnames,
      required this.scoring,
      required this.deliverytimes,
      required this.distance,
      required this.restpics});

  final String restpics;
  final String restnames;
  final String scoring;
  final String deliverytimes;
  final String distance;

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  bool currentRestaurantIndex = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 17),
      child: GestureDetector(
        onTap: () {
          setState(() {
            currentRestaurantIndex = !currentRestaurantIndex;
          });
        },
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(19),
          shadowColor: Colors.grey.withOpacity(0.5),
          child: Container(
            height: 100,
            width: 371,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(19),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.restpics),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 7),
                    Text(widget.restnames,
                        style: TextStyle(
                            color: Color(0xff010E16),
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 9),
                    Row(
                      children: [
                        SizedBox(width: 2),
                        Image.asset("assets/restaurantNames/star.png"),
                        SizedBox(width: 2),
                        Text(widget.scoring,
                            style: TextStyle(
                                color: Color(0xffB3B3B3),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(children: [
                      Image.asset("assets/restaurantNames/timer.png"),
                      SizedBox(width: 7),
                      Text(widget.deliverytimes,
                          style: TextStyle(
                              color: Color(0xffB3B3B3),
                              fontWeight: FontWeight.w400)),
                      SizedBox(width: 14),
                      Image.asset("assets/restaurantNames/circle.png"),
                      SizedBox(width: 7),
                      Text(widget.distance,
                          style: TextStyle(
                              color: Color(0xffB3B3B3),
                              fontWeight: FontWeight.w400))
                    ])
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 69, left: 10),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: currentRestaurantIndex
                            ? Colors.white
                            : Colors.black),
                    child: Center(
                      child: Text("New",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
