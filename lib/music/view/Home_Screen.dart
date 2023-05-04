import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Container(

            height: 100.h,
            width: 100.h,

            child: Image.asset("assets/image/img_1.png",height: 100.h,width: 100.w,),
            // decoration: BoxDecoration(
            //   image:DecorationImage(image: AssetImage("assets/image/img.png"))
            // ),
          )
          
        ],

      ),
    ),);
  }
}
