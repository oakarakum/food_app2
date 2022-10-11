// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(300, 75),
          textStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
          backgroundColor: Color(0xff010E16), // background color of the button
          foregroundColor: Color(0xffF5F5F5)), // color of the text
      onPressed: () {
        //Navigator.push(context, MaterialPageRoute(builder: (context) => ,)) //Sayfa adını bekiyorum.
      },
      child: Text(
        "Login",
        style: GoogleFonts.inriaSerif(),
      ),
    );
  }
}
