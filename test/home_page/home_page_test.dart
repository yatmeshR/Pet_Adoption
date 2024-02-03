import 'package:adoption_app/main.dart';
import 'package:adoption_app/representation/ui/history_page/history_page.dart';
import 'package:adoption_app/representation/ui/home_page/home_page_ui.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/bird_page/birds_page.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/cat_page/cat_page.dart';
import 'package:adoption_app/representation/ui/home_page/type_pages/dog_page/dog_page.dart';
import 'package:adoption_app/representation/ui/search/search_page_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('HomePage widget test', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());


    expect(find.byType(HomePage), findsOneWidget);


    expect(find.text('Location'), findsOneWidget);
    expect(find.text('Mumbai'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_drop_down), findsOneWidget);


    expect(find.text('Categories'), findsOneWidget);

    // Tap the search button and verify navigation to SearchPage
    await tester.tap(find.byIcon(Icons.search_rounded));
    await tester.pumpAndSettle();
    expect(find.byType(SearchPage), findsOneWidget);


    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();


    await tester.tap(find.byIcon(Icons.history));
    await tester.pumpAndSettle();
    expect(find.byType(HistoryPage), findsOneWidget);


    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();


    expect(find.text('Categories'), findsOneWidget);


    expect(find.byType(TabBar), findsOneWidget);
    expect(find.byType(TabBarView), findsOneWidget);


    expect(find.byType(DogPage), findsOneWidget);
    expect(find.byType(CatPage), findsOneWidget);
    expect(find.byType(BirdsPage), findsOneWidget);
  });
}
