import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/DigitalTab/CommonWidgets/EmployeeAvatars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import '../../../../Utils/CommonWidgets/Text.dart';
import '../../../../Utils/CommonWidgets/sized_box.dart';
import '../../../../routes/route_name.dart';
import 'StatusContainer.dart';

class CustomAccordion extends StatefulWidget {
  final String orderId;
  final String dateTime;
  final String valuation;
  final String status;

  const CustomAccordion({
    Key? key,
    required this.orderId,
    required this.dateTime,
    required this.valuation,
    required this.status,
  }) : super(key: key);

  @override
  _CustomAccordionState createState() => _CustomAccordionState();
}

class _CustomAccordionState extends State<CustomAccordion> {

  bool isExpanded = false; // Initial state is collapsed

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
                child: Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text20w500c3725EA('${widget.orderId}'),
                  text16w400cA0ABBB('Order ID'),
                ],
              ),
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
          Row(
            children: [
              Row(
                children: [
                  text17w400c667085('Date & time'),
                  SizedBox(width: 38.w),
                  text17w400c464748(':'),
                ],
              ),
              sizedBoxWidth(5.w),
              Flexible(child: text17w400c464748(widget.dateTime)),
            ],
          ),
          sizedBoxHeight(26.h),
          Row(
            children: [
              Row(
                children: [
                  text17w400c667085('Total valuation'),
                  SizedBox(width: 15.w),
                  text17w400c464748(':'),
                ],
              ),
              sizedBoxWidth(5.w),
              Flexible(child: text17w400c464748(widget.valuation)),
            ],
          ),
          sizedBoxHeight(26.h),
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
                child: Stack(
                  children: [
                    EmployeeAvatars(
                        count: 5, // Number of avatars to display
                        extraCount: 50, // Extra count like +50
                        avatarImage: 'assets/images/png/Avatar.png')
                    // Path to avatar img
                  ],
                ),
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
      titleBorderRadius: BorderRadius.circular(0),
      titlePadding: const EdgeInsets.all(16.0),
      contentPadding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(0),
      onToggleCollapsed: (expanded) {
        setState(() {
          isExpanded = expanded; // Update expansion state
        });
        if (expanded == false) {
          // Handle navigation on collapse
          Get.toNamed(RouteName.digitalTabView);
        }
      },
    );
  }
}
