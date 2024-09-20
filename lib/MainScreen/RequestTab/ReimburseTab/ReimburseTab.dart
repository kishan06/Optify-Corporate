import 'package:Optifii_Corporate/Utils/CommonWidgets/SearchBar_Filter.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Common/CustomReportBox.dart';

class Reimbursetab extends StatefulWidget {
  const Reimbursetab({super.key});

  @override
  State<Reimbursetab> createState() => _ReimbursetabState();
}

class _ReimbursetabState extends State<Reimbursetab> {
  // Create a list of report data
  final List<ReportData> reportList = [
    ReportData(
      userName: 'Rethik Thota',
      reportId: 'WD-0956',
      reportTime: '4 min ago',
      reportTitle: 'Report for June 2024',
      reportName: 'Report name',
      imagePath: 'assets/images/png/Avatar.png',
    ),
    ReportData(
      userName: 'John Doe',
      reportId: 'WD-1234',
      reportTime: '10 min ago',
      reportTitle: 'Report for May 2024',
      reportName: 'Expense Report',
      imagePath: 'assets/images/png/Avatar.png',
    ),

    ReportData(
      userName: 'John Doe',
      reportId: 'WD-1234',
      reportTime: '10 hr ago',
      reportTitle: 'Report for May 2024',
      reportName: 'Expense Report',
      imagePath: 'assets/images/png/Avatar.png',
    ),

    ReportData(
      userName: 'John Doe',
      reportId: 'WD-1234',
      reportTime: '10 min ago',
      reportTitle: 'Report for May 2024',
      reportName: 'Expense Report',
      imagePath: 'assets/images/png/Avatar.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBarFilter(),

            sizedBoxHeight(12.h),

            Expanded(
              child: ListView.builder(
                itemCount: reportList.length,
                itemBuilder: (context, index) {
                  final report = reportList[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: CustomReportBox(
                      userName: report.userName,
                      reportId: report.reportId,
                      reportTime: report.reportTime,
                      reportTitle: report.reportTitle,
                      reportName: report.reportName,
                      imagePath: report.imagePath,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ReportData {
  final String userName;
  final String reportId;
  final String reportTime;
  final String reportTitle;
  final String reportName;
  final String imagePath;

  ReportData({
    required this.userName,
    required this.reportId,
    required this.reportTime,
    required this.reportTitle,
    required this.reportName,
    required this.imagePath,
  });
}
