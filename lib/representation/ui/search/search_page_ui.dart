import 'dart:core';

import 'package:adoption_app/data/animal_data/animal_data.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/type_page_widget.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatefulWidget {
  final List<Animal> allAnimal;
  const SearchPage({super.key,required this.allAnimal});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchController = TextEditingController();

  List<Animal>  displayedAnimals  = List.from(allAnimal);

  void searchAnimals(String value) {
    setState(() {
      displayedAnimals = allAnimal
          .where((element) => element.name.toString().toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 30, right: 30, top: 80),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey[350],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),


                  Expanded(
                    child: TextField(
                      controller: searchController,
                      cursorColor: Colors.black,
                      onChanged: (value) {
                        searchAnimals(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Search Animal...',
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
                child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 160,
                        childAspectRatio: 2/1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: displayedAnimals.length,
                    itemBuilder: (context, index) {
                      final search = displayedAnimals[index];
                      return Container(
                        decoration: BoxDecoration(
                            color: search.cardColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black)
                        ),
                        child: ListTile(
                          leading: Image.asset(search.image,height: 22,),
                          title: myText(
                              search.name, Colors.black, 14, FontWeight.bold),
                          subtitle: Row(
                            children: [
                              Icon(Icons.location_on_rounded,size: 8,),
                              SizedBox(width: 6,),
                              myText(search.location, Colors.grey, 10.sp,
                                  FontWeight.normal),
                            ],
                          ),
                        ),

                      );
                    }),)
          ],
        )
      ),
    );
  }
}
