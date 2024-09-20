import 'package:Optifii_Corporate/Utils/CommonWidgets/SearchBar_Filter.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'CommonWidgets/CustomAccordion.dart';

class Digitaltab extends StatefulWidget {
  const Digitaltab({super.key});

  @override
  State<Digitaltab> createState() => _DigitaltabState();
}

class _DigitaltabState extends State<Digitaltab> {
  // Create a list of order data
  final List<OrderData> orders = [
    OrderData(
      orderId: '#47954524',
      dateTime: '10 June 2024, 10 am',
      valuation: '₹ 70,000',
      status: 'Received',
    ),
    OrderData(
      orderId: '#85748945',
      dateTime: '12 July 2024, 12 pm',
      valuation: '₹ 1,20,000',
      status: 'Order accepted',
    ),
    OrderData(
      orderId: '#12584962',
      dateTime: '15 August 2024, 4 pm',
      valuation: '₹ 80,000',
      status: 'Dispatch',
    ),
    OrderData(
      orderId: '#74859632',
      dateTime: '25 August 2024, 3 pm',
      valuation: '₹ 1,00,000',
      status: 'Cancelled',
    ),
    OrderData(
      orderId: '#36985214',
      dateTime: '1 September 2024, 2 pm',
      valuation: '₹ 1,50,000',
      status: 'Pending',
    ),
    OrderData(
      orderId: '#74859632',
      dateTime: '25 August 2024, 3 pm',
      valuation: '₹ 1,00,000',
      status: 'Cancelled',
    ),
    OrderData(
      orderId: '#36985214',
      dateTime: '1 September 2024, 2 pm',
      valuation: '₹ 1,50,000',
      status: 'Pending',
    ),
    OrderData(
      orderId: '#74859632',
      dateTime: '25 August 2024, 3 pm',
      valuation: '₹ 1,00,000',
      status: 'Cancelled',
    ),
    OrderData(
      orderId: '#36985214',
      dateTime: '1 September 2024, 2 pm',
      valuation: '₹ 1,50,000',
      status: 'Pending',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBoxHeight(38.h),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 22),
              child: SearchBarFilter(),
            ),
            sizedBoxHeight(25.h),
            Column(
              children: orders.map((order) {
                return Column(
                  children: [
                    CustomAccordion(
                      orderId: order.orderId,
                      dateTime: order.dateTime,
                      valuation: order.valuation,
                      status: order.status,
                    ),

                    sizedBoxHeight(8.h),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 16),),

                    sizedBoxHeight(14.h),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),

                      child: Divider(
                        color: Color(0xffECECEC),
                      ),
                    )
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

// Define an OrderData class to structure the  data
class OrderData {
  final String orderId;
  final String dateTime;
  final String valuation;
  final String status;

  OrderData({
    required this.orderId,
    required this.dateTime,
    required this.valuation,
    required this.status,
  });
}
