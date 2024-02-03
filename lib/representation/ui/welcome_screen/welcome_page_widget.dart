

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget myText(String text,Color color,double size,FontWeight type) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: type),
  );
}




Widget myButton(
    Color color,
Function()? onTap,
 String text
    ) {
  return  GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(top: 30.h,left:25.w,right: 25.w),
      width: 325.w,
      height: 50.w,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow:[
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0,1)
            )
          ]
      ),
      child: Center(
        child: Text(text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.normal
          ),),
      ),
    ),
  );
}