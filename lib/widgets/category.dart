import 'package:flutter/cupertino.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({
    Key? key,
    required this.categoryImages,
    required this.categoryTexts,
  }) : super(key: key);
  final String categoryImages;
  final String categoryTexts;
  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Color.fromARGB(15, 143, 43, 9),
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 150,
          ),
          Image.asset(
            widget.categoryImages,
            fit: BoxFit.contain,
          ),
          Positioned(
            top: 87,
            left: 28,
            child: Text(
              widget.categoryTexts,
              style: TextStyle(
                  color: Color.fromARGB(255, 2, 26, 41),
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
