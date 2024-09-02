import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget text12w400c3725EA(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 12.sp,
      color: const Color(0xff3725EA),
      fontWeight: FontWeight.w400,
      fontFamily: 'Gilroy-Medium',
    ),
  );
}

Widget text16w400c585858(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 16.sp,
      color: const Color(0xff585858),
      fontWeight: FontWeight.w400,
      fontFamily: 'TTCommons-Regular',
    ),
  );
}

Widget text16w400c585858center(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 16.sp,
      color: const Color(0xff585858),
      fontWeight: FontWeight.w400,
      fontFamily: 'TTCommons-Regular',
    ),
  );
}

Widget text18w400c848484(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 18.sp,
      color: const Color(0xFF848484),
      fontWeight: FontWeight.w400,
      fontFamily: 'TTCommons-Regular',
    ),
  );
}

Widget text28w400cblack(String text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 28.sp,
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontFamily: 'Gilroy-SemiBold',
    ),
  );
}
