import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget myContainer(Color color, String text, String subText) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          myText(text, Colors.black, 16.sp, FontWeight.w900),
          myText(subText, Colors.grey, 14.sp, FontWeight.normal)
        ]
      ),
    ),
  );
}
