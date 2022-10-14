import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantList extends StatefulWidget {
  const RestaurantList({super.key});

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  bool currentRestaurantIndex = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                Image.asset("assets/restaurantNames/bking.png"),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 7),
                    Text("Burger King",
                        style: TextStyle(
                            color: Color(0xff010E16),
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 9),
                    Row(
                      children: [
                        SizedBox(width: 2),
                        Image.asset("assets/restaurantNames/star.png"),
                        SizedBox(width: 2),
                        Text("4.5",
                            style: TextStyle(
                                color: Color(0xffB3B3B3),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(children: [
                      Image.asset("assets/restaurantNames/timer.png"),
                      SizedBox(width: 7),
                      Text("25-35 mins",
                          style: TextStyle(
                              color: Color(0xffB3B3B3),
                              fontWeight: FontWeight.w400)),
                      SizedBox(width: 14),
                      Image.asset("assets/restaurantNames/circle.png"),
                      SizedBox(width: 7),
                      Text("8 km",
                          style: TextStyle(
                              color: Color(0xffB3B3B3),
                              fontWeight: FontWeight.w400))
                    ])
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 69, left: 55),
                    child: Container(
                        child: SvgPicture.asset(
                      "assets/restaurantNames/new1.svg",
                      color: //Buraya normal cont yap. renk değiştir
                          currentRestaurantIndex ? Colors.white : Colors.black,
                    )))
              ],
            )),
      ),
    );
  }
}
