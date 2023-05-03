import 'package:flutter/material.dart';
import 'package:music_app/music/provider/music_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  musicprovider? providerF;
  musicprovider? providerT;

  @override
  void initState() {
    super.initState();
    Provider.of<musicprovider>(context,listen: false).inlita();
  }
  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<musicprovider>(context,listen: false);
    providerT=Provider.of<musicprovider>(context,listen: true);

    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Container(

            height: 100.h,
            width: 100.h,

            // child: Image.asset("assets/image/img_1.png",height: 100.h,width: 100.w,),
            decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage("assets/image/img.png"),fit: BoxFit.fill)
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 20.h,
              width: 20.h,
              decoration: BoxDecoration(
                color: Color(0x993f3f40),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage('assets/image/img.png'),fit: BoxFit.fill)
              ),

            ),
          ),
          Align(alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Slider(value: 0.5, onChanged: (value) {

                },),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(("00:00")),
                    Text(("10:00"))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.refresh)),
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.arrow_back_ios)),
                    FloatingActionButton(backgroundColor: Colors.black,onPressed: () {
                      
                    },child: Icon(Icons.pause,color:Colors.white,),),
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.arrow_forward_ios)),
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.favorite)),
                  ],
                )
              ],
            ),
          )
          
        ],

      ),
    ),);
  }
}
