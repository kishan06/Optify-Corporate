import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/VoucherTab/CommonWidgets/CustomAccordionOfDepartmentTabView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/CommonWidgets/sized_box.dart';

class Departmenttab extends StatelessWidget {
  Departmenttab({super.key});

  final List<DepartmentData> department = [
    DepartmentData(
      departmentImg: 'assets/images/png/frame1.png',
      dateTime: 'Created on - 20 June 2024',
      departmentName: 'Finance',
    ),
    DepartmentData(
      departmentImg: 'assets/images/png/frame1.png',
      dateTime: 'Created on - 20 June 2024',
      departmentName: 'Design',
    ),
    DepartmentData(
      departmentImg: 'assets/images/png/frame1.png',
      dateTime: 'Created on - 20 June 2024',
      departmentName: 'Design',
    ),
    DepartmentData(
      departmentImg: 'assets/images/png/frame1.png',
      dateTime: 'Created on - 20 June 2024',
      departmentName: 'Design',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: department.map((departmentData) {
              return Column(
                children: [
                  sizedBoxHeight(16.h),
                  CustomAccordionOfDepartmentTabView(
                    departmentName: departmentData.departmentName,
                    departmentImg: departmentData.departmentImg,
                    dateTime: departmentData.dateTime,
                  ),
                  Divider(color: Color(0xffECECEC),),

                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class DepartmentData {
  final String departmentImg;
  final String dateTime;
  final String departmentName;

  DepartmentData({
    required this.departmentImg,
    required this.departmentName,
    required this.dateTime,
  });
}
