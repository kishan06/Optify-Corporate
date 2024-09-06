// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final content;
  const CommonCard({
    super.key,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffDADDE8),
            offset: Offset(0.0, 0.0),
            blurRadius: 10.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child: content,
    );
  }
}
