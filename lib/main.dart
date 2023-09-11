import 'package:flutter/material.dart';
import 'package:hng_task2/src/model/cv_model.dart';

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
      theme: ThemeData.light().copyWith(primaryColor: Colors.brown),
      darkTheme: ThemeData.dark(),
      home: AboutDevelopers(
          cvData: CVData(
              name: 'Edoki',
              slackUsername: 'chuksDev',
              githubHandle: 'edokichuks',
              bio:
                  'I\'m an aspiring mechatronics engineering student in Federal University of Technology Owerri Futo. With more than 2 year experience in fundamentals of programming in Java, C, Scripting language, design concepts, version control systems API consumption and lots more')),
    );
  }
}
