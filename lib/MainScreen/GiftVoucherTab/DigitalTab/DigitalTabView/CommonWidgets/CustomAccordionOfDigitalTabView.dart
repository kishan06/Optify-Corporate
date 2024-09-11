
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

import '../../../../../Utils/CommonWidgets/Text.dart';

class Customaccordionofdigitaltabview extends StatefulWidget {
  final String employeesName;
  final String employeesId;
  final String employeesDepartment;
  final String employeesMobileNumber;
  final String employeesMemberSince;
  final String employeesEmailAddress;
  final String employeesImage;
  const Customaccordionofdigitaltabview({super.key, required this.employeesName, required this.employeesId, required this.employeesDepartment, required this.employeesMobileNumber, required this.employeesMemberSince, required this.employeesEmailAddress, required this.employeesImage});

  @override
  State<Customaccordionofdigitaltabview> createState() => _CustomaccordionofdigitaltabviewState();
}

class _CustomaccordionofdigitaltabviewState extends State<Customaccordionofdigitaltabview> {
  bool isExpanded = false;
 // Initial state is collapsed
  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      titleChild: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            minRadius: 10,
            backgroundColor: const Color.fromRGBO(98, 17, 203, 0.178),
            child: Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
          ),
          sizedBoxWidth(11.w),

          Container(
            height: 52.h,
            width: 52.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: Image.asset(widget.employeesImage),
          ),

          sizedBoxWidth(8.w),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text20w500c3725EA('${widget.employeesName}'),
              text16w400cA0ABBB('${widget.employeesId}'),
            ],
          ),
        ],
      ),
      contentChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Department
          Row(
            children: [
              Row(
                children: [
                  text17w400c667085('Department'),
                  SizedBox(width: 35.w),
                  text17w400c464748(':'),
                ],
              ),
              sizedBoxWidth(5.w),
              Flexible(child: text17w400c464748(widget.employeesDepartment)),
            ],
          ),
          sizedBoxHeight(26.h),
          // Mobile number
          Row(
            children: [
              Row(
                children: [
                  text17w400c667085('Mobile number'),
                  SizedBox(width: 10.w),
                  text17w400c464748(':'),
                ],
              ),
              sizedBoxWidth(5.w),
              Flexible(child: text17w400c464748(widget.employeesMobileNumber)),
            ],
          ),
          sizedBoxHeight(26.h),
          // Member since
          Row(
            children: [
              Row(
                children: [
                  text17w400c667085('Member since'),
                  SizedBox(width: 10.w),
                ],
              ),
              sizedBoxWidth(5.w),
              Flexible(child: text17w400c464748(widget.employeesMemberSince)),

            ],
          ),
          sizedBoxHeight(26.h),
          // Email Address
          Row(
            children: [
              Row(
                children: [
                  text17w400c667085('Email Address'),
                  SizedBox(width: 10.w),
                ],
              ),
              sizedBoxWidth(5.w),
              Flexible(child: text17w400c464748(widget.employeesEmailAddress)),

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
      titlePadding: const EdgeInsets.only(top: 16,bottom: 14,left: 16,right: 16),
      contentPadding: const EdgeInsets.only(top: 26 , left: 48 , bottom: 19),
      margin: const EdgeInsets.all(0),
    );
  }
}
