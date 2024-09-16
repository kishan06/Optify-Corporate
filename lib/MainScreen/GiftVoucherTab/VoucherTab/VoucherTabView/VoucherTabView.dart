import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/VoucherTab/VoucherTabView/DepartmentTab/DepartmentTab.dart';
import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/VoucherTab/VoucherTabView/EmployeesTab/EmployeesTab.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../DigitalTab/CommonWidgets/StatusContainer.dart';

class Vouchertabview extends StatefulWidget {
  const Vouchertabview({super.key});

  @override
  State<Vouchertabview> createState() => _VouchertabviewState();
}

class _VouchertabviewState extends State<Vouchertabview> {


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
      case 'Completed':{
        return {
          'backgroundColor': const Color.fromRGBO(0, 164, 56, 0.08),
          'borderColor' : const Color(0xff00A438),
          'textColor' : const Color(0xff00A438),
          'circleColor': const Color(0xff00A438),
        };
      }
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
    var statusColors = getStatusColors('Completed');

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: CommonAppbar(titleTxt: ''),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 37.h,
                  width: 96.w,
                  child: Image.asset('assets/images/png/h&m.png'),
                ),
                StatusContainer(
                  status: 'Completed',
                  backgroundColor: statusColors['backgroundColor'],
                  borderColor: statusColors['borderColor'],
                  textColor: statusColors['textColor'],
                  circleColor: statusColors['circleColor'],
                ),
              ],
            ),
          ),

           sizedBoxHeight(24.h),

          Expanded(
            child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    CommonTabBar(tabs: [
                      Tab(text: 'Employees'),
                      Tab(text: 'Department'),
                    ]),
                    Expanded( // Wrap TabBarView with Expanded to avoid overflow
                      child: TabBarView(
                        children: [
                          Employeestab(),
                          Departmenttab()
                        ],
                      ),
                    )
            
            
            
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}


