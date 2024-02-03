
import 'package:adoption_app/representation/ui/history_page/history_page.dart';
import 'package:adoption_app/representation/ui/home_page/home_page_widget.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/bird_page/birds_page.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/cat_page/cat_page.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/dog_page/dog_page.dart';
import 'package:adoption_app/representation/ui/search/search_page_ui.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../bloc/home_bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> allTabs = [
   myTab("assets/tab1.png", "Dog"),
    myTab("assets/tab2.png", "Cat"),
    myTab("assets/tab3.png", "Bird"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: allTabs.length,
      child: Scaffold(

        body: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return SafeArea(
                  child: Column(
                    children: [
                      // Location
                      Padding(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [


                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    myText("Location", Colors.grey, 14.sp,
                                        FontWeight.normal),
                                    Icon(Icons.arrow_drop_down)
                                  ],
                                ),
                                myText("Mumbai", Colors.black, 24.sp, FontWeight.bold)
                              ],
                            ),


                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: IconButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>SearchPage(allAnimal: [],)));
                                  },
                                      icon: Icon(Icons.search_rounded)),
                                ),
                                SizedBox(width: 14,),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: IconButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>HistoryPage()));
                                  },
                                      icon: Icon(Icons.history)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 25,),

                      //   Advertisment
                      sliders(context, state),

                      SizedBox(height: 25,),
                      //   Categories
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(child: myText("Categories", Colors.black, 18.sp, FontWeight.bold)),
                          ],
                        ),
                      ),

                      SizedBox(height: 25,),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: TabBar(

                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                12.0,
                              ),
                              color: Color.fromRGBO(130, 202, 255,1),
                            ),
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            tabs: allTabs
                        ),
                      ),
                      //tabbar views
                      Expanded(
                        child: TabBarView(
                          children: [
                            DogPage(),
                           CatPage(),
                            BirdsPage()
                          ],
                        ),
                      )





                    ],
                  ),
                );
              },
            ),
      ),
    );
  }
}
