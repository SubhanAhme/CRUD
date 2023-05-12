 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

myfooter() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 392.6,
        height: 60,
        color: Color(0xFF0F2F44),
        child: GridView.count(
          // scrollDirection: Axis.horizontal,
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            myfivebutton(
              Center(
                child: Container(
                  height: 25,
                  width: 25,
                  child: Icon(Icons.home,color: Colors.white,size: 25,),
                ),
              ),
            ),
            myfivebutton(
              Center(
                child: Container(
                  height: 23,
                  width: 23,
                  child: Icon(Icons.search,color: Colors.white,size: 25,),
                ),
              ),
            ),
            myfivebutton(
              Center(
                child: Container(
                  height: 25,
                  width: 25,
                  child: Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 25,),
                ),
                  ),
            ),
            myfivebutton(
              Center(
                child: Container(
                  height: 25,
                  width: 25,
                  child: Icon(Icons.supervised_user_circle_outlined,color: Colors.white,size: 25,),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget myfivebutton([mychild]) {
  return Container(
      width: 392 / 4,
      padding: EdgeInsets.only(bottom: 40, left: 0),
      height: 45,
      // color: Colors.white,
      child:myfivebutton());
}
