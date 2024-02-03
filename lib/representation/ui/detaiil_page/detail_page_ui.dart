import 'package:adoption_app/bloc/detail_bloc/detail_bloc.dart';
import 'package:adoption_app/data/adopt_pet/adopt_pet.dart';
import 'package:adoption_app/data/animal_data/animal_data.dart';
import 'package:adoption_app/representation/ui/detaiil_page/detail_page_widget.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatefulWidget {
  final Animal animal;
  const DetailPage({super.key,required this.animal});



  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {



  // final adopt = Adopt();


  @override
  Widget build(BuildContext context) {
    final animalBloc = context.read<DetailBloc>();
    animalBloc.add(LoadPet());
    return Scaffold(
      body:  BlocBuilder<DetailBloc, DetailState>(
  builder: (context, state) {
    return SafeArea(
        child: SingleChildScrollView(
          child:  Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      Hero(
                        tag: "imagepath-${widget.animal.image}",
                        child: Container(
                          height: 460,
                          decoration: BoxDecoration(
                              color: widget.animal.cardColor,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(60),
                                  bottomLeft: Radius.circular(60)),
                              image: DecorationImage(
                                  image: AssetImage(widget.animal.image),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Positioned(
                          left: 16,
                          top: 16,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:Colors.grey[350],
                            ),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.black,
                                )),
                          )),
                      Positioned(
                        right: 25,
                        top: 16,
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey[350],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.more_horiz,
                            )
                          ),
                        ),)
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            widget.animal.name,
                            style:
                            TextStyle( fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                                color:Colors.black ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 25.h,
                    ),

                    Padding(
                      padding:EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          myContainer(Color.fromRGBO(232, 241, 212,1), widget.animal.gender, "Sex"),
                          SizedBox(width: 16,),
                          myContainer(Color.fromRGBO(255, 234, 200,1), widget.animal.age , "Age"),
                          SizedBox(width: 16,),
                          myContainer(Color.fromRGBO(189, 237, 253,1), widget.animal.weight , "Weight"),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          myText(widget.animal.decp, Colors.black, 14.sp, FontWeight.normal)
                        ],
                      ),
                    ),


                    myButton(Colors.blueAccent, () {
                      animalBloc.add(AddPet(widget.animal));
                    } , "Adopt Me")

                  ],
                )
              ],
            ),
          ),


);
  },
),

    );
  }
}
