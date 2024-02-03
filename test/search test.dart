import 'package:adoption_app/representation/ui/search/search_page_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:adoption_app/data/animal_data/animal_data.dart';


void main() {
  testWidgets('SearchPage widget test', (WidgetTester tester) async {

    final List<Animal> testAnimals = [
      Animal(name: 'Dog', location: 'Location1', image: 'image1', cardColor: Colors.blue, age: '2', weight: '12', gender: 'male', decp: 'good boy'),
      Animal(name: 'Cat', location: 'Location2', image: 'image2', cardColor: Colors.green, age: '1', weight: '6', gender: 'girl', decp: 'good girl'),
    ];


    await tester.pumpWidget(
      MaterialApp(
        home: SearchPage(allAnimal: testAnimals),
      ),
    );


    expect(find.byType(SearchPage), findsOneWidget);


    expect(find.byType(TextField), findsOneWidget);


    expect(find.byType(GridView), findsOneWidget);


    await tester.pumpAndSettle();
  });
}
