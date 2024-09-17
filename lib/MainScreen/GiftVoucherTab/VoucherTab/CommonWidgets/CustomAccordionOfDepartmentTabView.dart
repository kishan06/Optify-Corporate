import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

import '../../../../Utils/CommonWidgets/Text.dart';
import '../../../../Utils/CommonWidgets/sized_box.dart';
import '../../DigitalTab/CommonWidgets/EmployeeAvatars.dart';
import '../../DigitalTab/CommonWidgets/StatusContainer.dart';

class CustomAccordionOfDepartmentTabView extends StatefulWidget {
  final String departmentImg;
  final String dateTime;
  final String departmentName;

  const CustomAccordionOfDepartmentTabView({
    super.key,
    required this.departmentImg,
    required this.dateTime,
    required this.departmentName,
  });

  @override
  State<CustomAccordionOfDepartmentTabView> createState() =>
      _CustomAccordionOfDepartmentTabViewState();
}

class _CustomAccordionOfDepartmentTabViewState
    extends State<CustomAccordionOfDepartmentTabView> {
  bool isExpanded = false; // Initial state is collapsed

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      titleChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                minRadius: 10,
                backgroundColor: const Color.fromRGBO(98, 17, 203, 0.178),
                child: Icon(isExpanded
                    ? Icons.arrow_drop_up
                    : Icons.arrow_drop_down),
              ),
              const SizedBox(width: 11),
              SizedBox(
                height: 52.h,
                width: 52.w,
                child: Image.asset(widget.departmentImg),
              ),
              sizedBoxWidth(8.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text20w400c252C32(widget.departmentName),
                  text16w400cA0ABBB(widget.dateTime),
                ],
              ),
            ],
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
                  text17w400c667085('Total employees'),
                  SizedBox(width: 5.w),
                  text17w400c464748(':'),
                ],
              ),
              sizedBoxWidth(5.w),
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

        ],
      ),
      collapsedIcon: const SizedBox.shrink(),
      expandedIcon: const SizedBox.shrink(),
      collapsedTitleBackgroundColor: Colors.transparent,
      expandedTitleBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
      contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
      titleBorderRadius: BorderRadius.circular(5),
      contentBorderRadius: BorderRadius.circular(5),
      titlePadding: const EdgeInsets.only(top: 10),
      contentPadding: const EdgeInsets.all(32.0),
      margin: const EdgeInsets.all(0),
      onToggleCollapsed: (value) {
        setState(() {
          isExpanded = !isExpanded; // Toggle the state
        });
      },
    );
  }
}
