import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Custom widget that takes Color and Category name
class CustomColorAndCategory extends StatelessWidget {
  final Color color;
  final String categoryName;

  const CustomColorAndCategory({
    Key? key,
    required this.color,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Circular color indicator
        Container(
          height: 14.h,
          width: 14.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),

        SizedBox(width: 4.w),

        // Category name text
        Text(
          categoryName,
          style: TextStyle(
            color: const Color(0xff718EBF),
            fontSize: 16.sp,
            fontFamily: 'TT Commons',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
