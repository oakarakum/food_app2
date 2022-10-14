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
    return Column(
      children: [
        SizedBox(
          child: Image.asset(
            widget.categoryImages,
            fit: BoxFit.contain,
          ),
        ),
        Text(widget.categoryTexts)
      ],
    );
  }
}
