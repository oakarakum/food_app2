import 'package:flutter/cupertino.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

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
            "assets/listViewImages/pizza.png",
            fit: BoxFit.contain,
          ),
        ),
        Text("Placeholder")
      ],
    );
  }
}
