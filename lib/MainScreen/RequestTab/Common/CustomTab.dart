import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTab extends StatelessWidget {
  final String label;

  const CustomTab({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 44.h, // Set a fixed height for the tab
          child: Tab(
            child: Center(
              child: text16w400c606E83(label), // Adjusted font style
            ),
          ),
        ),
        sizedBoxWidth(20.w),
      ],
    );
  }
}
