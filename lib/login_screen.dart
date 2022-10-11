// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app2/widgets/loginbutton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010E16),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Image.asset(
              "assets/logpic.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Text(
              "Lorem ipsum \ndolor sit amet, \nconsectetur \nadipiscing elit.",
              style: TextStyle(color: Color(0xffF5F5F5), fontSize: 38),
            ),
          ),
          SizedBox(height: 43),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: LoginButton(),
          ),
          SizedBox(height: 18),
          Text("Don't have an account?",
              style: TextStyle(color: Color(0xff375268), fontSize: 15)),
          SizedBox(height: 5),
          Text("Create account",
              style: TextStyle(color: Color(0xffD9D9D9), fontSize: 13))
        ],
      ),
    );
  }
}
