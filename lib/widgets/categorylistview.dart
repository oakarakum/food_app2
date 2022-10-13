import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatergoryListView extends StatefulWidget {
  const CatergoryListView({super.key});

  @override
  State<CatergoryListView> createState() => _CatergoryListViewState();
}

class _CatergoryListViewState extends State<CatergoryListView> {
  List<String> picAssets = [
    "assets/listViewImages/pizza.png",
    "assets/listViewImages/pan-cake.png",
    "assets/listViewImages/sandwich.png",
    "assets/listViewImages/ice-cream.png",
    "assets/listViewImages/noodles.png"
  ];
  List<String> textAssets = [
    "Pizza",
    "Pan-cake",
    "Sandwich",
    "Ice-cream",
    "Noodles"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 114,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: picAssets.length,
          itemBuilder: ((context, index) {
            return Column(
              children: [
                SizedBox(
                  child: Image.asset(
                    picAssets[index],
                    fit: BoxFit.contain,
                  ),
                ),
                Text(textAssets[index])
              ],
            );
          })),
    );
  }
}
