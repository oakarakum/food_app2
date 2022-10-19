import 'package:flutter/material.dart';

class IncreaseandDecreaseButton extends StatefulWidget {
  const IncreaseandDecreaseButton({super.key});

  @override
  State<IncreaseandDecreaseButton> createState() =>
      _IncreaseandDecreaseButtonState();
}

class _IncreaseandDecreaseButtonState extends State<IncreaseandDecreaseButton> {
  int count = 0;

  void decreaseCount() {
    setState(() {
      count--;
    });
  }

  void increaseCount() {
    setState(() {
      count++;
    });
  }

  //int activeindex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Row(
      children: [
        FloatingActionButton(
          //Çıkarma Buttonu
          onPressed: () {
            decreaseCount();
          },
          child: Center(
            child: Icon(
              Icons.remove,
              size: 15,
            ),
          ),
        ), //Çıkarma Buttonu bitiyor
        Text(
          //Sayaç
          '$count',
          style: TextStyle(fontSize: 15),
        ),
        FloatingActionButton(
          //Toplama butonu
          onPressed: () {
            increaseCount();
          },
          child: Center(
            child: Icon(
              Icons.add,
              size: 15,
            ),
          ),
        ), //Toplama butonu bitti
      ],
    ));
    /* Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OutlinedButton(
            onPressed: () {
              ;
            },
            style: OutlinedButton.styleFrom(
                elevation: 4,
                minimumSize: Size(15, 30),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black),
            child: Center(
                child: Icon(
              Icons.remove,
              size: 15,
            )),
          ),
          Text("${_count}"),
          OutlinedButton(
            onPressed: (){
              
            };
            
            style: OutlinedButton.styleFrom(
                elevation: 4,
                minimumSize: Size(15, 30),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black),
            child: Center(
                child: Icon(
              Icons.add,
              size: 15,
            )),
          ),
        ],
      ), */
  }
}
