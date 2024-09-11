import 'package:Optifii_Corporate/Utils/CommonWidgets/SearchBar_Filter.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
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
      orderId: '#85748945',
      dateTime: '12 July 2024, 12 pm',
      valuation: '₹ 1,20,000',
      status: 'Dispatch',
    ),
    OrderData(
      orderId: '#85748945',
      dateTime: '12 July 2024, 12 pm',
      valuation: '₹ 1,20,000',
      status: 'Dispatch',
    ),
    OrderData(
      orderId: '#85748945',
      dateTime: '12 July 2024, 12 pm',
      valuation: '₹ 1,20,000',
      status: 'Order accepted',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarFilter(),
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
                    sizedBoxHeight(24.h),
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
