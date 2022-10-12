// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app2/widgets/appbarmenu.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            height: 45,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    blurStyle: BlurStyle.outer,
                    blurRadius: 3,
                    offset: Offset(2, 2),
                    color: Colors.black)
              ],
              color: Colors.white,
            ),
            child: TextFormField(
              cursorHeight: 25,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding: EdgeInsets.only(top: 15, left: 5),
                  isDense: true,
                  prefixIcon: Align(
                    heightFactor: 1,
                    widthFactor: 1,
                    child: ImageIcon(
                      AssetImage("assets/search-icon.png"),
                      size: 30,
                      color: Color.fromARGB(255, 21, 20, 20),
                    ),
                  )),
            ),
          ),
        ),
        SizedBox(
          width: 9,
        ),
        ElevatedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              minimumSize: const Size(55, 50),
              backgroundColor: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: SvgPicture.asset("assets/Filter.svg"),
          ),
        )
      ],
    );
  }
}
