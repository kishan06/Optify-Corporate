import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketChatPage extends StatefulWidget {
  const TicketChatPage({super.key});

  @override
  State<TicketChatPage> createState() => _TicketChatPageState();
}

class _TicketChatPageState extends State<TicketChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: CommonAppbar(titleTxt: 'Raise a Ticket'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Color(0xffE4E4E4)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffDCDCDC),
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text20w400c141414('Issue :'),
                            text20w400c5B5B5B('App loading issue'),
                          ],
                        ),
                        sizedBoxHeight(16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text20w400c141414('Ticket :'),
                            text20w400c5B5B5B(' TA-97868'),
                          ],
                        ),
                        sizedBoxHeight(16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text20w400c141414('Assigned To :'),
                            text20w400c5B5B5B(' Aman'),
                          ],
                        ),
                        sizedBoxHeight(16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text18w400c5E0FCD('Status :'),
                            text18w400c5E0FCD(' IN progress'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBoxHeight(48.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/png/skname.png',
                      height: 43.h,
                      width: 43.w,
                    ),
                    sizedBoxWidth(8.w),
                    Flexible(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffF8F8F8),
                              Color(0xffF9F4FF),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          border:
                              Border.all(width: 0.5, color: Color(0xffD3D3D3)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: text16w400c5B5B5B(
                            'Lorem ipsum dolor sit amet, consecture consectetur adipiscing elit, sed do euio eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exerci'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            InkWell(
              onTap: () {},
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
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: text18w400cffffff('Reply'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
