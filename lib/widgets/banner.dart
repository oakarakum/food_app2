// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BannerDisc extends StatefulWidget {
  const BannerDisc({super.key});

  @override
  State<BannerDisc> createState() => _BannerDiscState();
}

class _BannerDiscState extends State<BannerDisc> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset("assets/banner.png"),
      Positioned(
        left: 20,
        top: 15,
        child: Text(
          "Get Special Discount",
          style: TextStyle(color: Color(0xff9B9B9B), fontSize: 20),
        ),
      ),
      Positioned(
        left: 20,
        top: 60,
        child: Text(
          "up to 75%",
          style: TextStyle(color: Color(0xffF5F5F5), fontSize: 35),
        ),
      ),
      Positioned(
          left: 25, top: 125, child: SvgPicture.asset("assets/claim.svg")),
    ]);
  }
}
