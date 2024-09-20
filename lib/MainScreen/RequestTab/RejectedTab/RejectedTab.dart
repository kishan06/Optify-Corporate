// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/CommonWidgets/SearchBar_Filter.dart';
import '../../../Utils/Helpers/colors.dart';
import '../../../routes/route_name.dart';
import '../ApprovedTab/Common/CustomReportBoxWithStatus.dart';

class Rejectedtab extends StatefulWidget {
  const Rejectedtab({super.key});

  @override
  State<Rejectedtab> createState() => _RejectedtabState();
}

class _RejectedtabState extends State<Rejectedtab> {


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
            Expanded(
              child: ListView.builder(
                itemCount: reportList.length,
                itemBuilder: (context, index) {
                  final report = reportList[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: InkWell(
                      onTap: (){
                       Get.toNamed(RouteName.rejectreportview);
                      },
                      child: CustomReportBoxWithStatus(
                        userName: report.userName ?? 'Unknown User',
                        employeetId: report.employeetId ?? 'Unknown ID',
                        reportID: report.reportId ?? 'Unknown Report ID',
                        reportTitle: report.reportTitle ?? 'Unknown Title',
                        reportName: report.reportName ?? 'Unknown Name',
                        imagePath: report.imagePath ?? 'assets/images/png/DefaultAvatar.png',
                        status: 'Rejected',
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