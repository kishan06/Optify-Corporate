import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/RaiseATicket/RaiseTicketView/RaiseTicketView.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RaiseATicket extends StatefulWidget {
  const RaiseATicket({super.key});

  @override
  State<RaiseATicket> createState() => _RaiseATicketState();
}

class _RaiseATicketState extends State<RaiseATicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: CommonAppbar(titleTxt: 'Raise a Ticket'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text18w400c141414('Subject'),
                  sizedBoxHeight(10.h),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffCDCDCD)),
                      borderRadius: BorderRadius.circular(8),
                    )),
                  ),
                  sizedBoxHeight(24.h),
                  text18w400c141414('Type of issue'),
                  sizedBoxHeight(10.h),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffCDCDCD)),
                      borderRadius: BorderRadius.circular(8),
                    )),
                  ),
                  sizedBoxHeight(24.h),
                  text18w400c141414('Subtype'),
                  sizedBoxHeight(10.h),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffCDCDCD)),
                      borderRadius: BorderRadius.circular(8),
                    )),
                  ),
                  sizedBoxHeight(24.h),
                  text18w400c141414('Add Screenshot'),
                  sizedBoxHeight(10.h),
                  Container(
                    height: 50.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: Color(0xffCDCDCD))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: Wrap(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF2E9FE),
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 6),
                              child: text18w400c363636('Upload from files'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  sizedBoxHeight(24.h),
                  text18w400c141414('Summarize your issue'),
                  sizedBoxHeight(10.h),
                  SizedBox(
                    height: 129.h, // Fixed height
                    child: TextField(
                      maxLines: null, // Allow for multiline input
                      expands: true, // Expands to fill the parent size
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        contentPadding:
                            EdgeInsets.all(12), // Adjust padding if needed
                      ),
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(73.h),
              InkWell(
                onTap: () {
                  Get.to(RaiseTicketView());
                },
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff3725EA),
                            Color(0xff5E0FCD),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight)),
                  child: Center(
                    child: text18w400cffffff('Raise a Ticket'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
