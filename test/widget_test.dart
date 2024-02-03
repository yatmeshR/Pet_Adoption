// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:adoption_app/bloc/detail_bloc/detail_bloc.dart';
import 'package:adoption_app/bloc/history_bloc/history_bloc.dart';
import 'package:adoption_app/bloc/home_bloc/home_bloc.dart';
import 'package:adoption_app/main.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('MyApp widget test', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());


    expect(find.byType(MaterialApp), findsOneWidget);


    expect(find.byType(MultiBlocProvider), findsOneWidget);


    expect(find.byType(BlocProvider<HomeBloc>), findsOneWidget);
    expect(find.byType(BlocProvider<DetailBloc>), findsOneWidget);
    expect(find.byType(BlocProvider<HistoryBloc>), findsOneWidget);


    expect(find.byType(ScreenUtilInit), findsOneWidget);


    expect(find.descendant(of: find.byType(ScreenUtilInit), matching: find.byType(MaterialApp)), findsOneWidget);
    expect(find.descendant(of: find.byType(MaterialApp), matching: find.byType(WelcomePage)), findsOneWidget);
  });
}
