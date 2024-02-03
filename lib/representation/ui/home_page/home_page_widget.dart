
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../bloc/home_bloc/home_bloc.dart';

Widget sliders(BuildContext context, HomeState state) {
  return Column(
    children: [
      Container(
        width: 324.w,
        height: 160.h,
        child: PageView(
          onPageChanged: (value) {
            context.read<HomeBloc>().add(HomePageDots(value));
          },
          children: [
            _slidersContainer(
                Colors.blueAccent,
                "Join our Animal lover community",
                Colors.yellow,
                "Join Now",
                "assets/card2.png",Colors.white,),
            _slidersContainer(
                Colors.deepPurple,
                "Street Pets Needs Your Protection",
                Colors.white,
                "Donate Now",
                "assets/card3.png",
              Colors.deepPurple,),
            _slidersContainer(
                Colors.orange.shade100,
                "Don't let them Starve",
                Colors.white,
                "Donate Now",
                "assets/card4.png",
              Colors.brown.shade400,),
          ],
        ),
      ),
      SizedBox(
        height: 6.h,
      ),
      Container(
        child: DotsIndicator(
          dotsCount: 3,
          position: state.index,
          decorator: DotsDecorator(
            color: Colors.grey,
            activeColor: Colors.blue,
            size: Size.square(5),
            activeSize: Size(
              17,
              5,
            ),
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
      )
    ],
  );
}

Widget _slidersContainer(
    Color boxColors, String title, Color color, String text, String imagepath, Color textColors) {
  return Container(
    margin: EdgeInsets.only(left: 8.w),
    width: 324.w,
    height: 180.h,
    decoration: BoxDecoration(
      color: boxColors,
      borderRadius: BorderRadius.all(Radius.circular(20.h)),
      //image: DecorationImage(image: AssetImage(imagepath))
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Container(
                width: 160.w,
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.h, left: 25.w, right: 25.w),
              width: 110.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1))
                  ]),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    child: Text(
                      text,
                      style: TextStyle(
                          color: textColors,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(imagepath,height: 100,),
        ),
      ],
    ),
  );
}

// Tab
Widget myTab(
    String imagepath,
    String name,
    ) {
   return Container(
    height: 30,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),

      ),
      child: Row(
        children: [
          Image.asset(imagepath),
          SizedBox(width: 8,),
          Text(name,
            style: TextStyle(fontSize: 20),),
        ],
      ),
    ),
  );
}



