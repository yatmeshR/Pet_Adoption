import 'package:adoption_app/main.dart';
import 'package:adoption_app/representation/ui/detaiil_page/detail_page_ui.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/bird_page/birds_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('BirdsPage widget test', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());


    expect(find.byType(BirdsPage), findsOneWidget);


    expect(find.text('Adopt Pets'), findsOneWidget);


    await tester.pumpAndSettle();
    expect(find.byType(ListView), findsOneWidget);


    await tester.tap(find.byType(GestureDetector).first);
    await tester.pumpAndSettle();


    expect(find.byType(DetailPage), findsOneWidget);


    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();


    expect(find.byType(BirdsPage), findsOneWidget);
  });
}
