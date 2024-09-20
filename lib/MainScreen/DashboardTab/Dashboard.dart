// ignore_for_file: file_names, unused_local_variable

import 'package:Optifii_Corporate/SideBar/SideBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonCard.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mat_month_picker_dialog/mat_month_picker_dialog.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey1 = GlobalKey<ScaffoldState>();
  bool showicon = false;

  @override
  Widget build(BuildContext context) {
    double totalAmount = 200000;
    double balaceview = 150000;
    double progress = balaceview / totalAmount;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey1,
      backgroundColor: const Color(0xFFFFFFFF),
      extendBody: true,
      drawer: CustomDrawer(onSwitchAccount: () {
        // Close the main drawer and open the switch account drawer
        Navigator.pop(context); // Close the main drawer
        Future.delayed(const Duration(milliseconds: 300), () {
          _scaffoldKey1.currentState?.openDrawer(); // Open the switch drawer
        });
      }), // Drawer added here
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff6311CB),
            ),
            child: Column(
              children: [
                const SideBar(),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/png/black_logo.png',
                        width: 25,
                        height: 25,
                      ),
                      sizedBoxWidth(10),
                      text22w400cwhite('Website Developers India Pvt Ltd.')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        text20w400c343C6A('Balance Overview'),
                        sizedBoxWidth(8.w),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              showicon = !showicon; // Toggle the state
                            });
                          },
                          child: Image.asset(
                            showicon
                                ? 'assets/images/png/eye.png'
                                : 'assets/images/png/hide.png',
                            width: showicon ? 20.w : 18.w,
                          ),
                        ),
                      ],
                    ),
                    sizedBoxHeight(5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text16w400c585858('Balance Overview'),
                            showicon
                                ? text24w600cblack('₹ 1,50,000')
                                : Image.asset(
                                    'assets/images/png/emoji.png',
                                    width: 40.w,
                                  ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text16w400c585858('Available amount'),
                            showicon
                                ? text24w600cblack('₹ 25,600')
                                : Image.asset(
                                    'assets/images/png/emoji.png',
                                    width: 40.w,
                                  ),
                          ],
                        ),
                      ],
                    ),
                    sizedBoxHeight(5.h),
                    Row(
                      children: [
                        text16w400c585858('Total amount -'),
                        text16w400cblack(' ₹ 2,00,000'),
                      ],
                    ),
                    sizedBoxHeight(10.h),
                    LinearProgressIndicator(
                      value: progress,
                      minHeight: 6,
                      backgroundColor: Colors.grey[300],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          Color(0xff6311CB)),
                    ),
                    sizedBoxHeight(30.h),
                    CommonCard(
                      content: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              text18w400c3A3472('Expense'),
                              text18w500c6311CB('View expense wallet requests')
                            ],
                          ),
                          sizedBoxHeight(5),
                          const Divider(),
                          sizedBoxHeight(5),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/png/Icon.png',
                                width: 50.w,
                                height: 50.h,
                              ),
                              sizedBoxWidth(10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text18w500cA3AED0('Active Expense wallets'),
                                  text24w400c2B3674('50'),
                                ],
                              ),
                            ],
                          ),
                          sizedBoxHeight(10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 244, 226, 240),
                              border: Border.all(
                                color: const Color(0xffC942AB),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.access_time,
                                      color: Color(0xffC942AB),
                                    ),
                                    sizedBoxWidth(5.w),
                                    text14w400cC942AB('Reimbursement requests'),
                                    sizedBoxWidth(5.w),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.h, vertical: 5.w),
                                      decoration: const BoxDecoration(
                                        color: Color(0xff3725EA),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: text10w400cwhite('20 New'),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    text14w400c6311CB('View'),
                                    const Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      color: Color(0xff6311CB),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    sizedBoxHeight(20.h),
                    CommonCard(
                      content: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              text18w400c3A3472('Benefit'),
                              text18w500c6311CB('View benefit wallet requests')
                            ],
                          ),
                          sizedBoxHeight(5),
                          const Divider(),
                          sizedBoxHeight(5),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/png/Icon.png',
                                width: 50.w,
                                height: 50.h,
                              ),
                              sizedBoxWidth(10.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text18w500cA3AED0('Active Benefit wallets'),
                                  text24w400c2B3674('50'),
                                ],
                              ),
                            ],
                          ),
                          sizedBoxHeight(10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 244, 226, 240),
                              border: Border.all(
                                color: const Color(0xffC942AB),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.access_time,
                                      color: Color(0xffC942AB),
                                    ),
                                    sizedBoxWidth(5.w),
                                    text14w400cC942AB('Reimbursement requests'),
                                    sizedBoxWidth(5.w),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 30.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.h, vertical: 5.w),
                                      decoration: const BoxDecoration(
                                        color: Color(0xff3725EA),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: text10w400cwhite('20 New'),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    text14w400c6311CB('View'),
                                    const Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      color: Color(0xff6311CB),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    sizedBoxHeight(40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text20w400c343C6A('Monthly Expense'),
                        ElevatedButton(
                          onPressed: () async {
                            final selected = await showMonthPicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1970),
                              lastDate: DateTime(2050),
                            );
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration:
                                const BoxDecoration(color: Color(0xffF2EEF8)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.calendar_today,
                                  color: Color(0xff6311CB),
                                ),
                                sizedBoxWidth(5.w),
                                text14w400c6311CB('Jan 30, 2024'),
                                sizedBoxWidth(5.w),
                                const Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xff6311CB),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    CommonCard(
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Stack(
                            children: [
                              Container(
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0.9,
                                child: Container(
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(197, 234, 137, 201),
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(5)),
                                  ),
                                ),
                              ),
                              FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0.7,
                                child: Container(
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffEBB805),
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(5)), // Food color
                                  ),
                                ),
                              ),
                              FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0.5,
                                child: Container(
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff59C36A),
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(5)),
                                  ),
                                ),
                              ),
                              FractionallySizedBox(
                                alignment: Alignment.centerLeft,
                                widthFactor: 0.3,
                                child: Container(
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff6211CB), // Voucher color
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(5)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text20w400c718EBF('Fuel'),
                                  text16w400c585858('40%'),
                                ],
                              ),
                              sizedBoxHeight(5),
                              const Divider(),
                              sizedBoxHeight(5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text20w400c718EBF('Food'),
                                  text16w400c585858('35%'),
                                ],
                              ),
                              sizedBoxHeight(5),
                              const Divider(),
                              sizedBoxHeight(5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text20w400c718EBF('Travel'),
                                  text16w400c585858('20%'),
                                ],
                              ),
                              sizedBoxHeight(5),
                              const Divider(),
                              sizedBoxHeight(5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text20w400c718EBF('Voucher'),
                                  text16w400c585858('10%'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    sizedBoxHeight(20.h),
                    text20w400c343C6A('Total Spending'),
                    sizedBoxHeight(10.h),
                    CommonCard(
                      content: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              'assets/images/png/abshd.png',
                              width: 50,
                            ),
                          ),
                          sizedBoxWidth(10.w),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text18w500c6311CB('Expense'),
                                sizedBoxHeight(10.h),
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: 0.6, // Example progress value (60%)
                                    minHeight: 6,
                                    backgroundColor: Colors.grey[300],
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                            Color(0xff3725EA)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          sizedBoxWidth(10.w),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                text16w400c6311CB(
                                    '₹ 50,000'), // Current progress
                                text16w400c6311CB('40%'), // Total target
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    sizedBoxHeight(15.h),
                    CommonCard(
                      content: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              'assets/images/png/sales.png',
                              width: 50,
                            ),
                          ),
                          sizedBoxWidth(10.w),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text18w500c6311CB('Tax benefit'),
                                sizedBoxHeight(10.h),
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: 0.6, // Example progress value (60%)
                                    minHeight: 6,
                                    backgroundColor: Colors.grey[300],
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                            Color(0xff3725EA)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          sizedBoxWidth(10.w),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                text16w400c6311CB(
                                    '₹ 50,000'), // Current progress
                                text16w400c6311CB('40%'), // Total target
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    sizedBoxHeight(15.h),
                    CommonCard(
                      content: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              'assets/images/png/IT.png',
                              width: 50,
                            ),
                          ),
                          sizedBoxWidth(10.w),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text18w500c6311CB('Gift card'),
                                sizedBoxHeight(10.h),
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: LinearProgressIndicator(
                                    value: 0.6, // Example progress value (60%)
                                    minHeight: 6,
                                    backgroundColor: Colors.grey[300],
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                            Color(0xff3725EA)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          sizedBoxWidth(10.w),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                text16w400c6311CB(
                                    '₹ 50,000'), // Current progress
                                text16w400c6311CB('40%'), // Total target
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
