import 'package:adoption_app/representation/ui/home_page/home_page_ui.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 239, 202, 1),  //248, 239, 202
      body: Container(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: SizedBox(
              height: 345.w,
              width: 345.w,
              child: Image.asset(
                "assets/cover photo.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          //   Title
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myText("Find Your", Colors.black, 24.sp, FontWeight.bold),
                      SizedBox(width: 6,),
                      myText("Dream", Colors.blue, 24.sp, FontWeight.bold),
                    ],
                  ),
                  myText("Pet Here", Colors.black, 24.sp, FontWeight.bold)
                ],
              ),
            ),
          ),
          //   SubTittle
          Container(
              width: 375.w,
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: myText(
                  "Join us and discover the best pet in your Location",
                  Colors.black.withOpacity(0.5),
                  14.sp,
                  FontWeight.normal)),

          //   button
          myButton(
            Colors.blueAccent,
              () => Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => HomePage())),
              "Continue")

        ]),
      )
    );
  }
}
