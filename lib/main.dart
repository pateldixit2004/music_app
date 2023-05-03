
import 'package:flutter/material.dart';
import 'package:music_app/music/provider/music_provider.dart';
import 'package:music_app/music/view/Home_Screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
void main()
{
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => musicprovider(),)
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context)=> Home_Screen(),
          },
        ),
      );
    },

    )
  );
}
