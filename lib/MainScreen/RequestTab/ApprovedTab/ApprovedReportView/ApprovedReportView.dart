// ignore_for_file: unnecessary_import

import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../GiftVoucherTab/DigitalTab/CommonWidgets/StatusContainer.dart';

class Approvedreportview extends StatefulWidget {
  const Approvedreportview({super.key});

  @override
  State<Approvedreportview> createState() => _ApprovedreportviewState();
}

class _ApprovedreportviewState extends State<Approvedreportview> {
  // Get the colors for the status
  Map<String, dynamic> getStatusColors(String status) {
    switch (status) {
      case 'Received':
      case 'Approved':
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

  List<BillItem> billItems = [
    BillItem(
        date: 'July 18',
        title: 'Burger Shack',
        price: 450,
        imagePath: 'assets/images/png/image 50.png'),
    BillItem(
        date: 'July 18',
        title: 'Burger Shack',
        price: 450,
        imagePath: 'assets/images/png/image 50.png'),
    BillItem(
        date: 'July 18',
        title: 'Burger Shack',
        price: 450,
        imagePath: 'assets/images/png/image 50.png'),
    BillItem(
        date: 'July 18',
        title: 'Burger Shack',
        price: 450,
        imagePath: 'assets/images/png/image 50.png'),
  ];


  @override
  Widget build(BuildContext context) {
    var statusColors = getStatusColors('Approved');

    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: const CommonAppbar(titleTxt: 'Report for june 2024'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 52.h,
                      width: 52.w,
                      child: Image.asset('assets/images/png/Avatar.png'),
                    ),
                    sizedBoxWidth(8.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text20w400c252C32('Rethik thota'),
                        text16w400cA0ABBB('WD-0956')
                      ],
                    ),
                  ],
                ),
                StatusContainer(
                  status: 'Approved',
                  backgroundColor: statusColors['backgroundColor'],
                  borderColor: statusColors['borderColor'],
                  textColor: statusColors['textColor'],
                  circleColor: statusColors['circleColor'],
                ),
              ],
            ),
            sizedBoxHeight(22.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    text16w400cA0ABBB('Reimbursed amount'),
                    text20w400c252C32('₹ 20000')

                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    text16w400cA0ABBB('Report number'),
                    text20w400c252C32('#124510')

                  ],)


              ],
            ),


            sizedBoxHeight(12.h),

            const DottedLine(
              direction: Axis.horizontal,
              dashColor: Color.fromRGBO(55, 37, 234, 0.17),
            ),

            sizedBoxHeight(25.h),

            text20w400c252C32('Expenses in this report'),

            sizedBoxHeight(20.h),

            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.55,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: billItems.length,
                    itemBuilder: (context, index) {
                      final item = billItems[index];
                      return Padding(
                        padding: EdgeInsets.only(bottom: 16.h),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  // Allows tapping outside to close
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: const Color.fromRGBO(
                                          0, 0, 0, 0.73), // Dark background
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: Image.asset(
                                              item.imagePath,
                                              fit: BoxFit.contain,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.8,
                                              // Adjust height
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.8, // Adjust width
                                            ),
                                          ),
                                          Positioned(
                                            top: 100.h,
                                            right: 25.w,
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Icon(
                                                Icons.close,
                                                size: 34.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 91.h,
                                    width: 88.w,
                                    padding:
                                    EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9.r),
                                      color: const Color.fromRGBO(
                                          55, 37, 234, 0.13),
                                    ),
                                    child: Center(
                                      child: Image.asset(item.imagePath),
                                    ),
                                  ),
                                  SizedBox(width: 11.w),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.date,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFFA0ABBB),
                                        ),
                                      ),
                                      Text(
                                        item.title,
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF606060),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '₹ ${item.price.toString()}',
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xFF252C32),
                                            ),
                                          ),
                                          SizedBox(width: 4.w),
                                          SizedBox(
                                            height: 20.h,
                                            width: 23.w,
                                            child: Image.asset(
                                                'assets/images/png/Black.png'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 18.h),
                            const DottedLine(
                              direction: Axis.horizontal,
                              dashColor: Color.fromRGBO(55, 37, 234, 0.17),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}


class BillItem {
  final String date;
  final String title;
  final double price;
  final String imagePath;

  BillItem({required this.date,
    required this.title,
    required this.price,
    required this.imagePath});
}