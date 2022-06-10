import 'package:flutter/material.dart';

class FourHomeAssignment extends StatefulWidget {
  static const String id = '/home_assignment_four_home';

  const FourHomeAssignment({Key? key}) : super(key: key);

  @override
  State<FourHomeAssignment> createState() => _FourHomeAssignmentState();
}

class _FourHomeAssignmentState extends State<FourHomeAssignment> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
