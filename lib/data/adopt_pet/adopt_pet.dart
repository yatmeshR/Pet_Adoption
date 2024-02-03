import 'package:adoption_app/data/animal_data/animal_data.dart';
import 'package:flutter/material.dart';

class Adopt{
  Adopt();
  List<Animal> adoptedAnimals = [];
  static final instanceOfAdopt = Adopt._();
  Adopt._();

  void adoptPet(Animal animal,context) {
    var adoptedAnimals =  Adopt.instanceOfAdopt.adoptedAnimals;
    if (!adoptedAnimals.contains(animal)) {
      // Pet hasn't been adopted before
      adoptedAnimals.add(animal);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Congratulations!'),
            content: Text('You have successfully adopted ${animal.name}'),
          );
        },
      );
    } else {
      // Pet has already been adopted
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Already Adopted'),
            content: Text('You have already adopted ${animal.name}'),
          );
        },
      );
    }
  }
}
