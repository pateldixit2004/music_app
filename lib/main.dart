
import 'package:flutter/material.dart';
import 'package:music_app/music/view/Home_Screen.dart';
import 'package:sizer/sizer.dart';
void main()
{
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=> Home_Screen(),
        },
      );
    },

    )
  );
}
