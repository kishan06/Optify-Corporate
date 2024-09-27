// ignore_for_file: unnecessary_import

import 'package:Optifii_Corporate/MainScreen/RequestTab/ApprovedTab/Common/CustomReportBoxWithStatus.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/SearchBar_Filter.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/route_name.dart';

class Approvedtab extends StatefulWidget {
  const Approvedtab({super.key});

  @override
  State<Approvedtab> createState() => _ApprovedtabState();
}

class _ApprovedtabState extends State<Approvedtab> {
  // Create a list of report data
  final List<ReportData> reportList = [
    ReportData(
      userName: 'Rethik Thota',
      employeetId: 'WD-0956',
      reportTime: '4 min ago',
      reportTitle: 'Report for June 2024',
      reportName: 'Report name',
      reportId: '#124510',
      imagePath: 'assets/images/png/Avatar.png',
    ),
    ReportData(
      userName: 'Rethik Thota',
      employeetId: 'WD-0956',
      reportTime: '4 min ago',
      reportTitle: 'Report for June 2024',
      reportName: 'Report name',
      reportId: '#124510',
      imagePath: 'assets/images/png/Avatar.png',
    ),
    ReportData(
      userName: 'Rethik Thota',
      employeetId: 'WD-0956',
      reportTime: '4 min ago',
      reportTitle: 'Report for June 2024',
      reportName: 'Report name',
      reportId: '#124510',
      imagePath: 'assets/images/png/Avatar.png',
    ),
    ReportData(
      userName: 'Rethik Thota',
      employeetId: 'WD-0956',
      reportTime: '4 min ago',
      reportTitle: 'Report for June 2024',
      reportName: 'Report name',
      reportId: '#124510',
      imagePath: 'assets/images/png/Avatar.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Padding(
        padding: const EdgeInsets.all(16),
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
                    child: InkWell(
                      onTap: (){
                        Get.toNamed(RouteName.approvedreportview);
                      },
                      child: CustomReportBoxWithStatus(
                        userName: report.userName ?? 'Unknown User',
                        employeetId: report.employeetId ?? 'Unknown ID',
                        reportID: report.reportId ?? 'Unknown Report ID',
                        reportTitle: report.reportTitle ?? 'Unknown Title',
                        reportName: report.reportName ?? 'Unknown Name',
                        imagePath: report.imagePath ?? 'assets/images/png/DefaultAvatar.png',
                        status: 'Approved',
                      ),
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
  final String? userName;
  final String? reportId;
  final String? employeetId;
  final String? reportTime;
  final String? reportTitle;
  final String? reportName;
  final String? imagePath;

  ReportData({
    required this.userName,
    required this.employeetId,
    required this.reportId,
    required this.reportTime,
    required this.reportTitle,
    required this.reportName,
    required this.imagePath,
  });
}