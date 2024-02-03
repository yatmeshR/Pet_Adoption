import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cards(
    Color cardColor,
    String name,
    String location,
    String image
    ) {
  return Padding(
    padding: EdgeInsets.only(left: 25),
    child: Container(
      height: 140.h,
      width: 200.w,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height:160,child: Image.asset(image)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 25, vertical: 16),
            child: Container(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                                color:Colors.black ),
                          )),
                      SizedBox(height: 6,),
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded),
                          SizedBox(
                            width: 6,
                          ),
                          myText(location, Colors.grey, 14.sp,
                              FontWeight.normal),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Container(
          //   width: 200.w,
          //   height: 60,
          //   child: Image.asset(
          //     dog.image,
          //     color: dog.cardColor,
          //   ),
          // )
        ],
      ),
    ),
  );
}