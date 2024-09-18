import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/DigitalTab/CommonWidgets/StatusContainer.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Utils/CommonWidgets/Text.dart';
import '../../../../Utils/CommonWidgets/sized_box.dart';

class CustomReportBoxWithStatus extends StatelessWidget {
  final String? userName; // Nullable fields
  final String? employeetId;
  final String reportTitle;
  final String reportName;
  final String imagePath;
  final String status;
  final String reportID;

  const CustomReportBoxWithStatus({
    super.key,
    this.userName, // Optional params
    this.employeetId,
    required this.reportID,
    required this.reportTitle,
    required this.reportName,
    required this.imagePath,
    required this.status,
  });

  // Get the colors for the status
  Map<String, dynamic> getStatusColors(String status) {
    switch (status) {
      // case 'Received':
      case 'Approved':
        return {
          'backgroundColor': const Color.fromRGBO(0, 164, 56, 0.08),
          'borderColor': const Color(0xff00A438),
          'textColor': Colors.green,
          'circleColor': Colors.green,
        };
      case 'Pending':
        return {
          'backgroundColor': Colors.orange.withOpacity(0.1),
          'borderColor': Colors.orange,
          'textColor': Colors.orange,
          'circleColor': Colors.orange,
        };
      case 'Rejected':
        return {
          'backgroundColor': Colors.red.withOpacity(0.1),
          'borderColor': Colors.red,
          'textColor': Colors.red,
          'circleColor': Colors.red,
        };
      case 'Dispatch':
        return {
          'backgroundColor': const Color.fromRGBO(223, 93, 23, 0.08),
          'borderColor': const Color(0xffDF5F17),
          'textColor': const Color(0xffDF5F17),
          'circleColor': const Color(0xffDF5F17),
        };
      case 'Order accepted':
        return {
          'backgroundColor': const Color.fromRGBO(55, 37, 234, 0.03),
          'borderColor': const Color(0xff3725EA),
          'textColor': const Color(0xff3725EA),
          'circleColor': const Color(0xff3725EA),
        };
      default:
        return {
          'backgroundColor': Colors.grey.withOpacity(0.1),
          'borderColor': Colors.grey,
          'textColor': Colors.grey,
          'circleColor': Colors.grey,
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    // Responsive height and width using flutter_screenutil
    double containerHeight = 164.h;
    double containerWidth = MediaQuery.of(context).size.width * 0.9;

    var statusColors = getStatusColors(status);

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
                        text20w400c252C32(userName ?? 'Unknown User'), // Safe fallback
                        text16w400cA0ABBB(employeetId ?? 'N/A'), // Safe fallback
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    text16w400cA0ABBB('Report number'),
                    text20w400c252C32(reportID)
                  ],
                ),
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
                    StatusContainer(
                      status: status,
                      backgroundColor: statusColors['backgroundColor'],
                      borderColor: statusColors['borderColor'],
                      textColor: statusColors['textColor'],
                      circleColor: statusColors['circleColor'],
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
