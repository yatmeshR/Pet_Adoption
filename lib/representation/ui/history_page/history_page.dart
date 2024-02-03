import 'package:adoption_app/bloc/history_bloc/history_bloc.dart';
import 'package:adoption_app/data/animal_data/animal_data.dart';
import 'package:adoption_app/representation/ui/detaiil_page/detail_page_widget.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {


  @override
  Widget build(BuildContext context) {
    final historyBloc = context.read<HistoryBloc>();
    historyBloc.add(LoadHistory());
    return Scaffold(
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          return SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.black,
                          )),
                      SizedBox(width: 80,),
                      myText("Adopted Pets", Colors.black, 20, FontWeight.bold),
                    ],
                  ),

                  Expanded(
                      child: ListView.builder(
                      itemCount: state.adoptedAnimals.length,
                      itemBuilder: (context, index) {
                        final animal = state.adoptedAnimals[index];
                        return Padding(
                          padding: EdgeInsets.only(left: 25,
                              right: 25,
                              top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: animal.cardColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.black)
                            ),
                            child: ListTile(
                              leading: Image.asset(animal.image),
                              title: myText(
                                  animal.name, Colors.black, 18,
                                  FontWeight.bold),
                              subtitle: Row(
                                children: [
                                  Icon(Icons.location_on_rounded),
                                  SizedBox(width: 6,),
                                  myText(animal.location, Colors.grey, 14.sp,
                                      FontWeight.normal),
                                ],
                              ),
                            ),

                          ),
                        );
                      }))
                ],
              )
          );
        },
      ),
    );
  }
}

