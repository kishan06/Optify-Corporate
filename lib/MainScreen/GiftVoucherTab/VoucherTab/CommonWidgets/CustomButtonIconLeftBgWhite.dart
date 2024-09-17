import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonIconLeftBgWhite extends StatelessWidget {
  const CustomButtonIconLeftBgWhite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 155.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 0.75, color: Color(0xff6311CB))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          // Icon()
          
          SizedBox(
            height: 17.h,
            width: 16.w,
            child: Image.asset('assets/images/png/arrow-up-right.png'),
          ),
          SizedBox(
            width: 8.w,
          ),
          text14w400c6311CB('View')
        ],
      ),
    );
  }
}
