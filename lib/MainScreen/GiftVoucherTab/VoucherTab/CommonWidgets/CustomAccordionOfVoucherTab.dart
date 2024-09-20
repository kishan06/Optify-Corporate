import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/VoucherTab/CommonWidgets/CustomButtonIconLeftBgWhite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

import '../../../../Utils/CommonWidgets/Text.dart';
import '../../../../Utils/CommonWidgets/sized_box.dart';
import '../../../../routes/route_name.dart';
import '../../DigitalTab/CommonWidgets/EmployeeAvatars.dart';
import '../../DigitalTab/CommonWidgets/StatusContainer.dart';

class Customaccordionofvouchertab extends StatefulWidget {
  final String voucherImg;
  final String dateTime;
  final String valuation;
  final String department;
  final String status;

  const Customaccordionofvouchertab({
    super.key,
    required this.voucherImg,
    required this.dateTime,
    required this.valuation,
    required this.status,
    required this.department,
  });

  @override
  State<Customaccordionofvouchertab> createState() =>
      _CustomaccordionofvouchertabState();
}

class _CustomaccordionofvouchertabState
    extends State<Customaccordionofvouchertab> {
  // Method to get status colors based on the status
  Map<String, dynamic> getStatusColors(String status) {
    switch (status) {
      case 'Received':
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
      case 'Cancelled':
        return {
          'backgroundColor': Colors.red.withOpacity(0.1),
          'borderColor': Colors.red,
          'textColor': Colors.red,
          'circleColor': Colors.red,
        };
      case 'Dispatch':
        return {
          'backgroundColor': const Color.fromRGBO(55, 37, 234, 0.03),
          'borderColor': const Color(0xff3725EA),
          'textColor': const Color(0xff3725EA),
          'circleColor': const Color(0xff3725EA),
        };
      case 'Proceeding':
        return {
          'backgroundColor': const Color.fromRGBO(55, 37, 234, 0.03),
          'borderColor': const Color(0xff396AFF),
          'textColor': const Color(0xff396AFF),
          'circleColor': const Color(0xff396AFF),
        };

      case 'Completed':
        return {
          'backgroundColor': const Color.fromRGBO(0, 164, 56, 0.08),
          'borderColor': const Color(0xff00A438),
          'textColor': const Color(0xff00A438),
          'circleColor': const Color(0xff00A438),
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

  bool isExpanded = false; // Initial state is collapsed

  @override
  Widget build(BuildContext context) {
    // Get the colors for the status
    var statusColors = getStatusColors(widget.status);

    return GFAccordion(
      titleChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                minRadius: 10,
                backgroundColor: const Color.fromRGBO(98, 17, 203, 0.178),
                child: Icon(
                    isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ),
              const SizedBox(width: 11),
              Container(
                height: 37.h,
                width: 96.w,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(widget.voucherImg))),
              )
            ],
          ),
          // StatusContainer with dynamic colors
          StatusContainer(
            status: widget.status,
            backgroundColor: statusColors['backgroundColor'],
            borderColor: statusColors['borderColor'],
            textColor: statusColors['textColor'],
            circleColor: statusColors['circleColor'],
          ),
        ],
      ),
      contentChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Row(
                  children: [
                    text17w400c667085('Date & time'),
                    SizedBox(width: 38.w),
                    text17w400c464748(':'),
                  ],
                ),
                sizedBoxWidth(5.w),
                Expanded(child: text17w400c464748(widget.dateTime)),
              ],
            ),
          ),
          sizedBoxHeight(26.h),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Row(
                  children: [
                    text17w400c667085('Total valuation'),
                    SizedBox(width: 20.w),
                    text17w400c464748(':'),
                  ],
                ),
                sizedBoxWidth(5.w),
                Expanded(child: text17w400c464748(widget.valuation)),
              ],
            ),
          ),
          sizedBoxHeight(26.h),

          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Row(

          Row(
            children: [
              Row(
                children: [
                  text17w400c667085('Total employees'),
                  SizedBox(width: 5.w),
                  text17w400c464748(':'),
                ],
              ),
              sizedBoxWidth(5.w),
              // Employee avatars section
              SizedBox(
                height: 24.h,
                width: 124.w,
                child: const Stack(
                  children: [
                    text17w400c667085('Total employees'),
                    SizedBox(width: 12.w),
                    text17w400c464748(':'),
                  ],
                ),
                sizedBoxWidth(5.w),
                // Employee avatars section
                SizedBox(
                  height: 24.h,
                  width: 124.w,
                  child: Stack(
                    children: [
                      EmployeeAvatars(
                        count: 5, // Number of avatars to display
                        extraCount: 50, // Extra count like +50
                        avatarImage: 'assets/images/png/Avatar.png',
                      ) // Path to avatar img
                    ],
                  ),
                ),
              ],
            ),
          ),
          sizedBoxHeight(26.h),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Row(
                  children: [
                    text17w400c667085('Department'),
                    SizedBox(width: 40.w),
                    text17w400c464748(':'),
                  ],
                ),
                sizedBoxWidth(5.w),
                Expanded(child: text17w400c464748(widget.department)),
              ],
            ),
          ),
          sizedBoxHeight(26.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomButtonIconLeftBgWhite(),
              SizedBox(width: 4.w), // Add some spacing between buttons
              Flexible(
                child: InkWell(
                    onTap: () {
                      Get.toNamed(RouteName.VoucherTabView);
                    },
                    child: const CustomButtonIconLeftBgWhite()),
              ),
            ],
          ),
        ],
      ),
      collapsedIcon: const SizedBox.shrink(),
      expandedIcon: const SizedBox.shrink(),
      collapsedTitleBackgroundColor: Colors.transparent,
      expandedTitleBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
      contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
      titleBorderRadius: BorderRadius.circular(5),
      contentBorderRadius: BorderRadius.circular(5),
      titlePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      contentPadding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(0),
      onToggleCollapsed: (value) {
        setState(() {
          isExpanded = !isExpanded; // Toggle the state
        });
      },
    );
  }
}
