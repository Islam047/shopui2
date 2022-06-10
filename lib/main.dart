import 'package:flutter/material.dart';
import 'package:shopui2/pages/home_assignment.dart';
import 'package:shopui2/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeAssignmentFour(),
      routes: {
        FourHomeAssignment.id: (context) => const FourHomeAssignment(),
        HomeAssignmentFour.id: (context) => const HomeAssignmentFour(),
      },
    );
  }
}
