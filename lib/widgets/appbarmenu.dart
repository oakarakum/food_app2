// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names
import 'package:flutter/material.dart';

class AppbarMenu extends StatefulWidget {
  AppbarMenu({required this.nametext, super.key});

  String dropdownvalue = "Location, Main City-Napgur";
  var items = [
    "Location, Main City-Napgur",
    "Location, Main City-Ankara",
    "Location, Main City-Java",
    "Location, Main City-Tokyo",
    "Location, Main City-Berlin"
  ];
  String nametext;
  @override
  State<AppbarMenu> createState() => _AppbarMenuState();
}

class _AppbarMenuState extends State<AppbarMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi ${widget.nametext} !",
              style: TextStyle(
                  color: Color(0xff010E16),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/location.png"),
                SizedBox(width: 10),
                DropdownButton(
                    isDense: true,
                    underline: SizedBox(),
                    value: widget.dropdownvalue,
                    iconEnabledColor: Color(0xff035176),
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: widget.items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items,
                          style: TextStyle(color: Color(0xffB3B3B3)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        widget.dropdownvalue = newValue!;
                      });
                    })
              ],
            )
          ],
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/bell.png"),
              iconSize: 20,
            ),
            Positioned(
              right: 8,
              child: Image.asset("assets/red_circle.png"),
            ),
            Positioned(
              right: 13.5,
              top: 4,
              child: Image.asset("assets/number.png"),
            ),
          ],
        )
      ],
    );
  }
}
