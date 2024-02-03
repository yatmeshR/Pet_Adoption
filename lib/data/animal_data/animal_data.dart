import 'package:flutter/material.dart';

class Animal {
  final String name;
  final String age;
  final String gender;
  final String weight;
  final Color cardColor;
  final String decp;
  final String image;
  final String location;

  Animal({required this.name,
    required this.age,
    required this.weight,
    required this.gender,
    required this.cardColor,
    required this.decp,
    required this.image,
    required this.location});

}





List<Animal> displayedAnimals = [];

List<Animal> allAnimal = [
  Animal(
      name: "Whiskers",
      age: "3",
      weight: "5.5",
      gender: "Male",
      cardColor: Color.fromRGBO(232, 241, 212,1),
      decp:
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/cat1.png',
      location: "Mumbai"
  ),
  Animal(
      name: 'Buddy',
      age: '3 years',
      weight: '25 kg',
      gender: 'Male',
      cardColor: Color.fromRGBO(232, 241, 212,1),
      decp: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/dog1.png',
      location: "Mumbai"
  ),
  Animal(
      name: 'Luna',
      age: '2 years',
      weight: '18 kg',
      gender: 'Female',
      cardColor: Color.fromRGBO(255, 234, 200,1),
      decp: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/dog2.png',
      location: "Mumbai"
  ),

  Animal(
      name: "Shadow",
      age: "5",
      weight: "6.2",
      gender: "Male",
      cardColor: Color.fromRGBO(232, 241, 212,1),
      decp:
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/cat3.png',
      location: "Mumbai"),
  Animal(
      name: "Cleo",
      age: "1",
      weight: "3.8",
      gender: "Female",
      cardColor: Color.fromRGBO(255, 234, 200,1),
      decp:
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/cat4.png',
      location: "Mumbai"),

  Animal(
      name: 'Max',
      age: '4 years',
      weight: '30 kg',
      gender: 'Male',
      cardColor: Color.fromRGBO(232, 241, 212,1),
      decp: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/dog3.png',
      location: "Mumbai"
  ),
  Animal(
      name: "Mittens",
      age: "2",
      weight: "4.0",
      gender: "Female",
      cardColor: Color.fromRGBO(255, 234, 200,1),
      decp:
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/cat2.png',
      location: "Mumbai"),
  Animal(
      name: 'Molly',
      age: '5 years',
      weight: '22 kg',
      gender: 'Female',
      cardColor: Color.fromRGBO(255, 234, 200,1),
      decp: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/dog4.png',
      location: "Mumbai"
  ),
  Animal(
      name: "Sparrow",
      age: "1",
      weight: "0.1",
      gender: "Male",
      cardColor: Color.fromRGBO(232, 241, 212, 1),
      decp:
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/bird1.png',
      location: "Mumbai"),
  Animal(
      name: "Blue Jay",
      age: "2",
      weight: "0.15",
      gender: "Female",
      cardColor: Color.fromRGBO(255, 234, 200, 1),
      decp:
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/bird2.png',
      location: "Mumbai"),

  Animal(
      name: "Canary",
      age: "1",
      weight: "0.05",
      gender: "Female",
      cardColor: Color.fromRGBO(255, 234, 200, 1),
      decp:
      "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Beatae mollitia quisquam, est ea perspiciatis natus eveniet voluptate impedit magni error sunt minus sequi obcaecati expedita",
      image: 'assets/bird4.png',
      location: "Mumbai"),

];