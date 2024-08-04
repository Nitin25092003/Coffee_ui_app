import 'package:flutter/material.dart';
class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:15 ),
      height: 60,
      decoration:BoxDecoration(
        color: Color(0xFF212325),
            boxShadow:[ BoxShadow(
          color: Colors.black.withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 8
      )
      ],),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home,size: 35,color: Color(0xFFE57734),),
          Icon(Icons.favorite_outlined,size: 35,color: Color(0xFFE57734),),
          Icon(Icons.notification_add,size: 35,color: Color(0xFFE57734),),
          Icon(Icons.person,size: 35,color: Color(0xFFE57734),)
        ],
      ),
    );
  }
}
