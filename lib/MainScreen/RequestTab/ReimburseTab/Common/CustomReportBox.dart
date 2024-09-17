import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Utils/CommonWidgets/Text.dart';
import '../../../../Utils/CommonWidgets/sized_box.dart';
import '../../../../Utils/Helpers/colors.dart';

class CustomReportBox extends StatelessWidget {
  final String userName;
  final String reportId;
  final String reportTime;
  final String reportTitle;
  final String reportName;
  final String imagePath;

  const CustomReportBox({
    super.key,
    required this.userName,
    required this.reportId,
    required this.reportTime,
    required this.reportTitle,
    required this.reportName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    // Responsive height and width using flutter_screenutil
    double containerHeight = 164.h;
    double containerWidth = MediaQuery.of(context).size.width * 0.9;

    return Container(
      height: containerHeight,
      width: containerWidth,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(55, 37, 234, 0.05),
        borderRadius: BorderRadius.circular(5.r), // Responsive corner radius
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.w), // Responsive padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 52.h,
                      width: 52.w,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(imagePath),
                    ),
                    sizedBoxWidth(8.w), // Responsive gap
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text20w400c252C32(userName),
                        text16w400cA0ABBB(reportId),
                      ],
                    ),
                  ],
                ),
                text16w400c6311CB(reportTime),
              ],
            ),
          ),
          sizedBoxHeight(18.h), // Responsive vertical gap
          const DottedLine(
            direction: Axis.horizontal,
            dashColor: Color.fromRGBO(55, 37, 234, 0.17),
          ),
          sizedBoxHeight(15.h), // Responsive vertical gap
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.w), // Responsive padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text18w400cA0ABBB(reportName),
                    text20w400c252C32(reportTitle),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(RouteName.reportpage);
                      },
                      child: Container(
                        height: 36.h,
                        width: 102.w,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(5.44.r), // Responsive corner radius
                          border: Border.all(
                              width: 0.75.w, color: AppColors.primary), // Responsive border width
                        ),
                        child: Center(
                          child: text14w400cffffff('View'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
