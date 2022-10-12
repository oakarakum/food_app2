import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
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
          child: TextFormField(
            cursorHeight: 25,
            cursorColor: Colors.green,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    //borderSide: BorderSide(color: Color(0xffFFFFFF)),
                    borderRadius: BorderRadius.circular(20)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffFFFFFF)),
                    borderRadius: BorderRadius.circular(20)),
                contentPadding: EdgeInsets.only(top: 15, left: 5),
                isDense: true,
                prefixIcon: Align(
                  heightFactor: 1,
                  widthFactor: 1,
                  child: ImageIcon(
                    AssetImage("assets/search-icon.png"),
                    size: 30,
                    color: Color(0xff333333),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
