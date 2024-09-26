import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWithLeftIcon extends StatelessWidget {
  final String iconPath;
  final String buttonText;
  final VoidCallback onPressed; // Add onPressed for functionality

  const CustomButtonWithLeftIcon({
    Key? key,
    required this.iconPath,
    required this.buttonText,
    required this.onPressed, // Ensure onPressed is passed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Handle tap action
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xff6311CB),
          border: Border.all(width: 1, color: Color(0xff6311CB)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              height: 16.h,
              width: 16.w,
            ),
            SizedBox(width: 8.w), // Add some space between icon and text
            Text(
              buttonText,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Gilroy-Medium',
                color: Colors.white, // Add text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
