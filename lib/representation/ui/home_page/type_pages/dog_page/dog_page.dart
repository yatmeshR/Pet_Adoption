import 'package:adoption_app/data/animal_data/dog/dog_data.dart';
import 'package:adoption_app/representation/ui/detaiil_page/detail_page_ui.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/type_page_widget.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DogPage extends StatefulWidget {
  const DogPage({super.key});

  @override
  State<DogPage> createState() => _DogPageState();
}

class _DogPageState extends State<DogPage> {
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
                  itemCount: dogs.length,
                  itemBuilder: (context, index) {
                    final dog = dogs[index];
                    return Hero(
                      tag: "imagepath-${dog.image}",
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) =>
                                        DetailPage(animal: dog)));
                          },
                          child: cards(dog.cardColor, dog.name, dog.location,
                              dog.image)),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
