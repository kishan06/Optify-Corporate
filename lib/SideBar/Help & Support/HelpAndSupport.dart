import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/Contact%20Us/ContactUs.dart';
import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/FAQ/Faq.dart';
import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/Privacy%20Policy/PrivacyPolicy.dart';
import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/RaiseATicket/RaiseATicket.dart';
import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/Terms%20&%20Condition/TermsAndCondition.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonContainerWithIconTextRightArrow.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({super.key});

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: CommonAppbar(titleTxt: 'Help & Support'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 64.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF3725EA), // #3725EA
                    Color(0xFFC33FAD), // #C33FAD at 54.54%
                    Color(0xFF5E0FCD), // #5E0FCD
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight, // 90 degrees equivalent
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x2BADADAD),
                    // #ADADAD with 17% opacity (2B hex value for opacity)
                    offset: Offset(0, 4),
                    // (x: 0, y: 4) to match the 4px offset
                    blurRadius: 10, // 10px blur
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.all(1), // Adjust to control border thickness
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFFDDF9), // #FFDDF9
                      Color(0xffEBDCFE), // #EBDCFE
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      text18w400c363636('Raise a Ticket'),
                      InkWell(
                        onTap: () {
                          Get.to(RaiseATicket());
                        },
                        child: SizedBox(
                          height: 21.44.h,
                          width: 21.44.w,
                          child: Image.asset(
                              'assets/images/png/right arrow.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            sizedBoxHeight(24.h),

            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFDFDCFF), // #DFDCFF
                    Color(0xFFEADBFF), // #EADBFF
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight, // 90 degrees
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40C3C3C3), // #C3C3C340 (25% opacity)
                    offset: Offset(0, 4), // x: 0px, y: 4px
                    blurRadius: 10, // 10px blur
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.all(1), // For the 1px border effect
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFFFFFFF), // Inner white background color
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,
                      vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      text18w400c363636('Past Tickets'),

                      sizedBoxHeight(12.h),

                      Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xff6211CB),
                            Color(0xffC33FAD)
                          ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight
                          ),
                        ),
                      ),

                      sizedBoxHeight(20.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          text18w400c585858('#455'),

                          Row(
                            children: [

                              Container(
                                height: 6.h,
                                width: 6.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff59C36A)
                                ),
                              ),
                              text16w400c59C36A('Active')

                            ],
                          )


                        ],
                      ),

                      sizedBoxHeight(5.h),

                      text18w400c141414('Lorem ipsum dolor sit amet')

                    ],
                  ),
                ),
              ),
            ),

            sizedBoxHeight(43.h),

            CommonContainerWithIconTextRightArrow(
              height: 67,
              text: 'FAQ',
              leftIconPath: 'assets/images/png/faq.png',
              rightIconPath: 'assets/images/png/arrow-left.png',
              onTap: () {
                Get.to(Faq());
              },
            ),

            sizedBoxHeight(16.h),


            CommonContainerWithIconTextRightArrow(
              height: 67,
              text: 'Contact Us',
              leftIconPath: 'assets/images/png/contact us.png',
              rightIconPath: 'assets/images/png/arrow-left.png',
              onTap: () {
                Get.to(ContactUs());
              },
            ),

            sizedBoxHeight(16.h),

            CommonContainerWithIconTextRightArrow(
                text: 'Privacy Policy',
                leftIconPath: 'assets/images/png/policy.png',
                rightIconPath: 'assets/images/png/arrow-left.png',
                onTap: () {
                  Get.to(PrivacyPolicy());
                }),

            sizedBoxHeight(16.h),

            CommonContainerWithIconTextRightArrow(
                text: 'Terms & Conditions',
                leftIconPath: 'assets/images/png/terms and condition.png',
                rightIconPath: 'assets/images/png/arrow-left.png',
                onTap: () {
                  Get.to(TermsAndCondition());
                }),


          ],
        ),
      ),
    );
  }
}
