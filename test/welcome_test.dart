import 'package:adoption_app/main.dart';
import 'package:adoption_app/representation/ui/home_page/home_page_ui.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
  // Import your main.dart file or the file containing HomePage

void main() {
  testWidgets('WelcomePage widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp()); // Replace MyApp with the name of your app's main widget

    // Verify that WelcomePage is displayed
    expect(find.byType(WelcomePage), findsOneWidget);

    // Verify that the image is displayed
    expect(find.byType(Image), findsOneWidget);

    // Verify that the title text is displayed
    expect(find.text('Find Your'), findsOneWidget);
    expect(find.text('Dream'), findsOneWidget);
    expect(find.text('Pet Here'), findsOneWidget);

    // Verify that the subtitle text is displayed
    expect(
        find.text('Join us and discover the best pet in your Location'),
        findsOneWidget);

    // Tap the "Continue" button and wait for navigation
    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    // Verify that HomePage is displayed after tapping the button
    expect(find.byType(HomePage), findsOneWidget);
  });
}
