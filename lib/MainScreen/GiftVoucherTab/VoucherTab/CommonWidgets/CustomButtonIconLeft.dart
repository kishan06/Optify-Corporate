import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/Helpers/colors.dart';

class CustomButtonIconLeft extends StatelessWidget {
  const CustomButtonIconLeft();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 231.w,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          SizedBox(
            height: 19.h,
            width: 19.w,
            child: Image.asset('assets/images/png/download.png'),
          ),

          SizedBox(
            width: 8.w,
          ),

          Text('Download allotment history',
          style: TextStyle(
            fontSize: 14.sp,
            color: Color(0xffffffff),
            fontWeight: FontWeight.w400,
            fontFamily: "Gilroy-Medium"
          ),)



        ],
      ),
    );
  }
}
