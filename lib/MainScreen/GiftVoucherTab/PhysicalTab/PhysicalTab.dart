import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:flutter/material.dart';

class Physicaltab extends StatefulWidget {
  const Physicaltab({super.key});

  @override
  State<Physicaltab> createState() => _PhysicaltabState();
}

class _PhysicaltabState extends State<Physicaltab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('physical layout')
        ],
      ),
    );
  }
}
