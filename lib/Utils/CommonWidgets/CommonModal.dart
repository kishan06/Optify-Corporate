import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

dialogwidget() {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.white,
      child: SizedBox(
        height: 240.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/png/Featured-icon.png',
                    width: 50.w,
                    height: 50.h,
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              text18w400cblack(
                "Are you sure you want to sign out?",
              ),
              sizedBoxHeight(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(RouteName.loginScreen);
                    },
                    child: Center(
                      child: Container(
                        width: 130.w,
                        height: 40.h,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xff6311CB),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Text(
                          'Yes, I do',
                          style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Medium',
                          ),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxWidth(10),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 130.w,
                      height: 40.h,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 231, 229, 237),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Text(
                        'No, don’t',
                        style: TextStyle(
                          color: const Color(0xff344054),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Gilroy-Medium',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

deletewidget() {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.white,
      child: SizedBox(
        height: 240.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/png/delete.png',
                    width: 50.w,
                    height: 50.h,
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              text18w400cblack(
                "Are you sure you want delete approver?",
              ),
              sizedBoxHeight(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Center(
                      child: Container(
                        width: 130.w,
                        height: 40.h,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xff6311CB),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Text(
                          'Yes, I do',
                          style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Medium',
                          ),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxWidth(10),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 130.w,
                      height: 40.h,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 231, 229, 237),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Text(
                        'No, don’t',
                        style: TextStyle(
                          color: const Color(0xff344054),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Gilroy-Medium',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
