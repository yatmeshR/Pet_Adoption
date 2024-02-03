import 'package:adoption_app/main.dart';
import 'package:adoption_app/representation/ui/history_page/history_page.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
 // Import your main.dart file or the file containing MyApp
import 'package:adoption_app/bloc/history_bloc/history_bloc.dart';

void main() {
  testWidgets('HistoryPage widget test', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());


    await tester.tap(find.byType(HistoryPage));
    await tester.pumpAndSettle();


    expect(find.byType(HistoryPage), findsOneWidget);

    // Verify the presence of "Adopted Pets" title
    expect(find.text('Adopted Pets'), findsOneWidget);

    // Verify the presence of the back button
    expect(find.byIcon(Icons.arrow_back_ios_new), findsOneWidget);

    expect(find.byType(ListView.builder), findsOneWidget);


    expect(find.byType(ListTile), findsWidgets);


    await tester.tap(find.byIcon(Icons.arrow_back_ios_new));
    await tester.pumpAndSettle();


    expect(find.byType(WelcomePage), findsOneWidget);
  });
}
