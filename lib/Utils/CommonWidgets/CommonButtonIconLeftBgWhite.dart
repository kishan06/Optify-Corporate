import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonIconLeftBgWhite extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CustomButtonIconLeftBgWhite({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 155.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.44),
        border: Border.all(width: 0.75 , color: Color(0xff6311CB))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          // Icon()
          
        ],
      ),
    );
  }
}
