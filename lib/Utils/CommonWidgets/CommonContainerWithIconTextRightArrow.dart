import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonContainerWithIconTextRightArrow extends StatelessWidget {
  final String text;
  final String leftIconPath;
  final String rightIconPath;
  final double height;
  final VoidCallback onTap;

  const CommonContainerWithIconTextRightArrow({
    Key? key,
    required this.text,
    required this.rightIconPath,
    this.height = 64, // Default height
    required this.leftIconPath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF3725EA),
            Color(0xFFC33FAD),
            Color(0xFF5E0FCD),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          const BoxShadow(
            color: Color(0xffE9E9E9),
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.all(1), // Adjust to control border thickness
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffffffff),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    leftIconPath,
                    width: 21.w,
                    height: 21.h,
                  ),
                  sizedBoxWidth(8.w),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'TT Commons',
                      color: const Color(0xFF141414), // Text color
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: onTap,
                child: Image.asset(
                  rightIconPath,
                  height: 20.h,
                  width: 20.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
