import 'package:adoption_app/data/animal_data/cat/cat_data.dart';
import 'package:adoption_app/representation/ui/detaiil_page/detail_page_ui.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/type_page_widget.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  myText("Adopt Pets", Colors.black, 18.sp, FontWeight.bold),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cats.length,
                  itemBuilder: (context, index) {
                    final cat = cats[index];
                    return Hero(
                        tag: "imagepath-${cat.image}",
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          DetailPage(animal: cat)));
                            },
                            child: cards(cat.cardColor, cat.name, cat.location,
                                cat.image)));
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
