import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: CommonAppbar(titleTxt: 'Contact Us'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image(
                          image: AssetImage(
                            'assets/images/png/Profile photo.png',
                          ),
                          height: 257.h,
                          width: 257.w,
                        ),
                        sizedBoxHeight(24.h),
                        text20w400c090909('How can we help you?'),
                        sizedBoxHeight(4.h),
                        text18w400c686868(
                            'We are here to help you, so, please get in'),
                        text18w400c686868('touch with us.')
                      ],
                    )
                  ],
                ),
                sizedBoxHeight(40.h),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffDBDBDB)),
                          borderRadius: BorderRadius.circular(6)),
                      hintText: 'Subject',
                      hintStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'TT Commons',
                          color: Color(0xff848484))),
                ),
                sizedBoxHeight(18.h),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffDBDBDB)),
                          borderRadius: BorderRadius.circular(6)),
                      hintText: 'E-mail address',
                      hintStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'TT Commons',
                          color: Color(0xff848484))),
                ),
                sizedBoxHeight(18.h),
                TextField(
                  maxLines: 5,

                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffDBDBDB)),
                          borderRadius: BorderRadius.circular(6)),
                      hintText: 'Subject',
                      hintStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'TT Commons',
                          color: Color(0xff848484))),
                ),
              ],
            ),
            CustomButton(text: 'Send')
          ],
        ),
      ),
    );
  }
}
