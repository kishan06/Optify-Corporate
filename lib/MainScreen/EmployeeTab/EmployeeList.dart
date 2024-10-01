import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/SearchBar_Filter.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(titleTxt: 'Employee KYC list'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SearchBarFilter(),
              sizedBoxHeight(30.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteName.employeedetails);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/png/Avatar.png',
                            width: 60.w,
                          ),
                          sizedBoxWidth(10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text20w400c252C32('Reethik thota'),
                              text16w400cA0ABBB('WD-0956'),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 6.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFFBB38)),
                        ),
                        sizedBoxWidth(6.w),
                        text15w400cyellow('Pending')
                      ],
                    )
                  ],
                ),
              ),
              sizedBoxHeight(5.h),
              const Divider(),
              sizedBoxHeight(5.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteName.employeedetails);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/png/Avatar.png',
                            width: 60.w,
                          ),
                          sizedBoxWidth(10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text20w400c252C32('Reethik thota'),
                              text16w400cA0ABBB('WD-0956'),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 6.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff3725EA)),
                        ),
                        sizedBoxWidth(6.w),
                        text15w400c3725EA('Min KYC')
                      ],
                    )
                  ],
                ),
              ),
              sizedBoxHeight(5.h),
              const Divider(),
              sizedBoxHeight(5.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteName.employeedetails);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/png/Avatar.png',
                            width: 60.w,
                          ),
                          sizedBoxWidth(10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text20w400c252C32('Reethik thota'),
                              text16w400cA0ABBB('WD-0956'),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 6.h,
                          width: 6.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff3725EA)),
                        ),
                        sizedBoxWidth(6.w),
                        text15w400c3725EA('Full KYC')
                      ],
                    )
                  ],
                ),
              ),
              sizedBoxHeight(5.h),
              const Divider(),
              sizedBoxHeight(5.h),
            ],
          ),
        ),
      ),
    );
  }
}
