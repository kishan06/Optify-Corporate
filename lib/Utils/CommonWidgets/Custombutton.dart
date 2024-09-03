// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optifii_Corporate/Utils/Helpers/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.ontap,
    required this.text,
    this.colorchange = false,
    this.productid,
  });

  final bool colorchange;
  final GestureTapCallback? ontap;
  final String text;
  final String? productid;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: const Color.fromARGB(255, 220, 220, 226),
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.h),
          ),
        ),
        onPressed: () {
          ontap!();
        },
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.secondary,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            fontFamily: 'Gilroy-Medium',
          ),
        ),
      ),
    );
  }
}
