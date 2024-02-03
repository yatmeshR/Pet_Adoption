import 'package:adoption_app/data/animal_data/bird/bird_data.dart';
import 'package:adoption_app/representation/ui/detaiil_page/detail_page_ui.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/type_page_widget.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BirdsPage extends StatefulWidget {
  const BirdsPage({super.key});

  @override
  State<BirdsPage> createState() => _BirdsPageState();
}

class _BirdsPageState extends State<BirdsPage> {
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
                  itemCount: birds.length,
                  itemBuilder: (context, index) {
                    final bird = birds[index];
                    return Hero(
                        tag: "imagepath-${bird.image}",
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          DetailPage(animal: bird)));
                            },
                            child: cards(bird.cardColor, bird.name,
                                bird.location, bird.image)));
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
