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
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 3,
                    blurRadius: 2,
                    offset: Offset(1, 3),
                    color: Color.fromARGB(255, 179, 169, 169))
              ],
              color: Colors.white,
            ),
            child: TextFormField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.bottom,
              cursorHeight: 25,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                contentPadding: EdgeInsets.only(bottom: 10),
                isDense: true,
                hintText: "Search Your food or Restaurant",
                hintStyle: TextStyle(color: Color(0xffCFCFCF)),
                prefixIcon: ImageIcon(
                  AssetImage("assets/search-icon.png"),
                  color: Color.fromARGB(255, 21, 20, 20),
                ),
              ),
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
