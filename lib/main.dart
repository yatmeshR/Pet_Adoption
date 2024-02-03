import 'package:adoption_app/bloc/detail_bloc/detail_bloc.dart';
import 'package:adoption_app/bloc/history_bloc/history_bloc.dart';
import 'package:adoption_app/representation/ui/welcome_screen/welcome_page_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/home_bloc/home_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => DetailBloc(context),
        ),
        BlocProvider(
          create: (context) => HistoryBloc(),
        ),

      ],
      child: ScreenUtilInit(
          builder: (context, child) {
            return MaterialApp(
                title: 'Flutter Demo',
               theme: ThemeData(
                 useMaterial3: true
               ),
                debugShowCheckedModeBanner: false,
                home: WelcomePage()
            );
          }
      ),
    );
  }
}

