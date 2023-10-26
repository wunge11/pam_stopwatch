import 'package:education_app/provider/favorite_provider.dart';
import 'package:education_app/screens/base_screen.dart';
import 'package:education_app/screens/course_screen.dart';
import 'package:education_app/screens/login.dart';
import 'package:education_app/screens/recomendation_screen.dart';
import 'package:education_app/screens/time.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/favorite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        routes: {
        '/kelompok' : (context) => CourseScreen(),
          '/stopwatch' : (context) => StopwatchPage(),
          '/rekomen' : (context) => Rekomendasi(),
          '/fav' : (context) => Favorit(),
        },
      debugShowCheckedModeBanner: false,
      title: 'Education App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          displayMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
