import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app2/widgets/appbarmenu.dart';
import 'package:food_app2/widgets/banner.dart';
import 'package:food_app2/widgets/bottomnavibar.dart';
import 'package:food_app2/widgets/category.dart';
import 'package:food_app2/widgets/restaurantList.dart';
import 'package:food_app2/widgets/searchbar.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int active_page = 0;
  List<String> categoryImageList = [
    "assets/listViewImages/pizza.png",
    "assets/listViewImages/pan-cake.png",
    "assets/listViewImages/sandwich.png",
    "assets/listViewImages/ice-cream.png",
    "assets/listViewImages/noodles.png",
  ];
  List<String> categoryTextList = [
    "   Pizza",
    " Pan-cake",
    "Sandwich",
    "Ice-cream",
    "  Noodle"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 25),
              AppbarMenu(nametext: "Noah"),
              SizedBox(height: 5),
              SearchBar(),
              SizedBox(height: 15),
              BannerDisc(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/Categories.svg"),
                  Text(
                    "Show all",
                    style: TextStyle(
                        color: Color(0xff459FCA),
                        fontSize: 15,
                        fontFamily: "Inter"),
                  )
                ],
              ),
              Container(
                height: 115,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: categoryTextList.length,
                    itemBuilder: ((context, index) {
                      return CategoryWidget(
                          categoryImages: categoryImageList[index],
                          categoryTexts: categoryTextList[index]);
                    })),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/Restaurant.svg"),
                  Text(
                    "Show all",
                    style: TextStyle(
                        color: Color(0xff459FCA),
                        fontSize: 15,
                        fontFamily: "Inter"),
                  )
                ],
              ),
              Container(
                height: 220,
                width: 353,
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return RestaurantList();
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
