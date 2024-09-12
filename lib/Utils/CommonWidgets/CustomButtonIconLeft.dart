import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Helpers/colors.dart';

class CustomButtonIconLeft extends StatelessWidget {
  const CustomButtonIconLeft({
    super.key,
    this.ontap,
    required this.text,
    this.colorchange = false,
    this.productid,
    this.icon,
  });

  final bool colorchange;
  final GestureTapCallback? ontap;
  final String text;
  final String? productid;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 231.w,
      height: 45.h,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            sizedBoxWidth(9.6.w),
            Text(
              text,
              style: TextStyle(
                color: AppColors.secondary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'Gilroy-Medium',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
