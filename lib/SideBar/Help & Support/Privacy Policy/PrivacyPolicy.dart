import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: CommonAppbar(titleTxt: 'Privacy Policy'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
        
              text18w400c000000('Lorem ipsum dolor sit amet, consecture'),
              sizedBoxHeight(37.h),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Color(0xffF8F8F8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(10.h),
                            Icon(Icons.circle,size: 8,)
                          ],
                        ),
                        sizedBoxWidth(8.w),
        
                        Expanded(
                            child: text20w400c373434('Lorem ipsum dolor sit amet, consecture consectetur adipiscing'))
        
        
                      ],
                    ),
                    sizedBoxHeight(8.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(10.h),
                            Icon(Icons.circle,size: 8,)
                          ],
                        ),
                        sizedBoxWidth(8.w),
        
                        Expanded(
                            child: text20w400c373434('Lorem ipsum dolor sit amet, consecture consectetur adipiscing'))
        
        
                      ],
                    ),
                    sizedBoxHeight(8.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(10.h),
                            Icon(Icons.circle,size: 8,)
                          ],
                        ),
                        sizedBoxWidth(8.w),
        
                        Expanded(
                            child: text20w400c373434('Lorem ipsum dolor sit amet, consecture consectetur adipiscing'))
        
        
                      ],
                    ),
                    sizedBoxHeight(8.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(10.h),
                            Icon(Icons.circle,size: 8,)
                          ],
                        ),
                        sizedBoxWidth(8.w),
        
                        Expanded(
                            child: text20w400c373434('Lorem ipsum dolor sit amet, consecture consectetur adipiscing'))
        
        
                      ],
                    ),
                    sizedBoxHeight(8.h),
                  ],
                ),
              ),
        
              sizedBoxHeight(23.h),
        
              text18w400c000000('Lorem ipsum dolor sit amet, consecture'),
        
              sizedBoxHeight(37.h),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Color(0xffF8F8F8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(10.h),
                            Icon(Icons.circle,size: 8,)
                          ],
                        ),
                        sizedBoxWidth(8.w),
        
                        Expanded(
                            child: text20w400c373434('Lorem ipsum dolor sit amet, consecture consectetur adipiscing'))
        
        
                      ],
                    ),
                    sizedBoxHeight(8.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(10.h),
                            Icon(Icons.circle,size: 8,)
                          ],
                        ),
                        sizedBoxWidth(8.w),
        
                        Expanded(
                            child: text20w400c373434('Lorem ipsum dolor sit amet, consecture consectetur adipiscing'))
        
        
                      ],
                    ),
                    sizedBoxHeight(8.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(10.h),
                            Icon(Icons.circle,size: 8,)
                          ],
                        ),
                        sizedBoxWidth(8.w),
        
                        Expanded(
                            child: text20w400c373434('Lorem ipsum dolor sit amet, consecture consectetur adipiscing'))
        
        
                      ],
                    ),
                    sizedBoxHeight(8.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(10.h),
                            Icon(Icons.circle,size: 8,)
                          ],
                        ),
                        sizedBoxWidth(8.w),
        
                        Expanded(
                            child: text20w400c373434('Lorem ipsum dolor sit amet, consecture consectetur adipiscing'))
        
        
                      ],
                    ),
                    sizedBoxHeight(8.h),
                  ],
                ),
              ),
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
