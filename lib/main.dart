import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogaapp/constants.dart';
import 'package:yogaapp/screens/detail_screen.dart';
import 'package:yogaapp/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditiation App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: GoogleFonts.muktaTextTheme(
          Theme.of(context).textTheme
        )
        
      ),
      home: const DetailPage(),
    );
  }
}


