import 'package:flutter/material.dart';

import 'src/screens/home_screen.dart';
import 'src/screens/resume.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HNG Task 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const AboutDevelopers(),
    );
  }
}

