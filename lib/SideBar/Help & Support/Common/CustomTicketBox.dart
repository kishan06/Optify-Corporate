import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/RaiseATicket/RaiseTicketView/IssueChatPage/TicketChatPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Utils/CommonWidgets/Text.dart';
import '../../../Utils/CommonWidgets/sized_box.dart';

class CustomTicketBox extends StatelessWidget {
  final String issue;
  final String ticketNumber;
  final String assignedTo;
  final String status;

  const CustomTicketBox({
    super.key,
    required this.issue,
    required this.ticketNumber,
    required this.assignedTo,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(width: 1, color: const Color(0xffCDCDCD)),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: const Color(0xffDCDCDC),
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxHeight(24.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    text20w400c141414('Issue :'),
                    text20w400c5B5B5B(' $issue'),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Get.to(TicketChatPage());
                  },
                  child: Image.asset(
                    'assets/images/png/message-square.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ],
            ),
          ),
          sizedBoxHeight(16.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text20w400c141414('Ticket :'),
                text20w400c5B5B5B(ticketNumber),
              ],
            ),
          ),
          sizedBoxHeight(16.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text20w400c141414('Assigned To :'),
                text20w400c5B5B5B(assignedTo),
              ],
            ),
          ),
          sizedBoxHeight(25.h),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.vertical(
                bottom: Radius.circular(10),
              ),
              color: const Color(0xff5E0FCD),
            ),
            child: Center(
              child: text18w400cffffff('Status : $status'),
            ),
          ),
        ],
      ),
    );
  }
}