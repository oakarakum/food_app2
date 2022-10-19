import 'package:flutter/material.dart';

class RestaurantListView extends StatefulWidget {
  RestaurantListView({super.key, required this.foodnames});

  final String foodnames;

  @override
  State<RestaurantListView> createState() => _RestaurantListViewState();
}

class _RestaurantListViewState extends State<RestaurantListView> {
  bool activefoodindex = false;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            activefoodindex = !activefoodindex;
          });
        },
        style: OutlinedButton.styleFrom(
          minimumSize: Size(100, 40),
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          side: BorderSide(width: 2, color: Colors.black),
          backgroundColor:
              activefoodindex == false ? Colors.white : Colors.black,
          foregroundColor:
              activefoodindex == false ? Colors.black : Colors.white,
        ),
        child: Text(widget.foodnames));
  }
}
