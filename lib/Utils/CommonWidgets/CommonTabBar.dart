// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTabBar extends StatelessWidget {
  // Set the desired height

  final List<Tab> tabs;
  const CommonTabBar({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 4.0, // Add elevation for shadow effect
      shadowColor:
          Colors.black.withOpacity(0.5), // Customize shadow color if needed
      child: TabBar(
          dividerColor: const Color(0xFFFFFFFF).withOpacity(0.07),
          labelStyle: TextStyle(
            fontSize: 16.sp,
            color: const Color(0xFF6311CB),
            fontWeight: FontWeight.w600,
            fontFamily: 'Gilroy-Regular',
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: const Color(0xFF6311CB),
          indicatorWeight: 3.h,
          dividerHeight: 3.h,
          unselectedLabelStyle: TextStyle(
            fontSize: 16.sp,
            color: const Color(0xFF747474),
            fontWeight: FontWeight.w400,
            fontFamily: 'Gilroy-Regular',
          ),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          tabs: tabs,
          labelPadding: EdgeInsets.all(0),

          padding: EdgeInsets.all(0),
          indicatorPadding: EdgeInsets.all(0)),
    );
  }
}
