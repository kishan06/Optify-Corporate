import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/Helpers/colors.dart';

class CustomButtonIconLeft extends StatelessWidget {
  const CustomButtonIconLeft(
      {super.key,
      required this.image,
      required this.text,
      required this.ontap});

  final String text;
  final String image;
  // final OnTap ontap;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 45.h,
        width: 231.w,
        decoration: BoxDecoration(
            color: AppColors.primary, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 20.w,
              height: 20.h,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Gilroy-Medium"),
            )
          ],
        ),
      ),
    );
  }
}
