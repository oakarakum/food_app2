import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CatergoryListView extends StatefulWidget {
  const CatergoryListView({super.key});

  @override
  State<CatergoryListView> createState() => _CatergoryListViewState();
}

class _CatergoryListViewState extends State<CatergoryListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //Bu container'ı silmeyi unutma
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5, //değişecek
          itemBuilder: ((context, index) {
            return Container(
                //Listview'ın fotoğrafı gelecek
                //Listview'ın TEXT'İ gelecek
                );
          })),
    );
  }
}
