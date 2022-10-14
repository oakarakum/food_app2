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
      height: 100,
      child: Stack(
        children: [
          Container(
            height: 100,
          ),
          Image.asset(
            widget.categoryImages,
            fit: BoxFit.contain,
          ),
          Positioned(
            top: 87,
            left: 15,
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
