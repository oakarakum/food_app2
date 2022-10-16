import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int indext = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: indext,
      onTap: (value) {
        setState(() {
          indext = value;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: ImageIcon(AssetImage("assets/home-icon.png"),size: 30,),
            color: indext == 0 ? Colors.black : const Color(0xff7E869E),
            onPressed: () {},
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: ImageIcon(AssetImage("assets/fav.png")),
            color: indext == 0 ? Colors.black : const Color(0xff7E869E),
            onPressed: () {},
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: ImageIcon(AssetImage("assets/cart.png")),
            color: indext == 0 ? Colors.black : const Color(0xff7E869E),
            onPressed: () {},
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: ImageIcon(AssetImage("assets/user.png")),
            color: indext == 0 ? Colors.black : const Color(0xff7E869E),
            onPressed: () {},
          ),
          label: "",
        ),
      ],
    );
  }
}
