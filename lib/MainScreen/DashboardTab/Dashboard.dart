// ignore_for_file: file_names, unused_local_variable

import 'package:Optifii_Corporate/SideBar/SideBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonBottomNavigationBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonCard.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/MainScreen.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
      bottomNavigationBar:
          CustomBottomNavigationBar(mainController: mainController),
      drawer: const CustomDrawer(), // Drawer added here
      body: Column(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff6311CB),
                ),
                child: Column(
                  children: [
                    AppBar(
                      scrolledUnderElevation: 0.0,
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      backgroundColor: const Color(0xff6311CB),
                      titleSpacing: 0,
                      leading: InkWell(
                        onTap: () {
                          _scaffoldKey1.currentState
                              ?.openDrawer(); // Open the main drawer
                        },
                        child: Center(
                          child: Image.asset(
                            'assets/images/png/menu.png',
                            height: 15.h,
                            width: 20.w,
                          ),
                        ),
                      ),
                      title: text24w600cwhite('Dashboard'),
                      actions: [
                        GestureDetector(
                          onTap: () {
                            // Add your navigation logic here for search
                          },
                          child: Image.asset(
                            'assets/images/png/search.png',
                            height: 25.h,
                            width: 25.w,
                          ),
                        ),
                        sizedBoxWidth(10.w),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteName.notification);
                          },
                          child: Image.asset(
                            'assets/images/png/bell.png',
                            height: 25.h,
                            width: 25.w,
                          ),
                        ),
                        sizedBoxWidth(16.w),
                      ],
                    ),
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
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        text20w400c343C6A('Balance Overview'),
                        InkWell(
                          onTap: () {
                            Get.toNamed(RouteName.statement);
                          },
                          child: Row(
                            children: [
                              const Text(
                                'View statement',
                                style: TextStyle(
                                  color: Color(
                                    0xff3725EA,
                                  ),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              sizedBoxWidth(5.w),
                              const Icon(
                                Icons.arrow_forward_rounded,
                                color: Color(
                                  0xff3725EA,
                                ),
                                size: 16,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    sizedBoxHeight(5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text16w400cA5A5A5('Used amount'),
                            text24w600cblack('₹ 1,50,000')
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text16w400cA5A5A5('Available amount'),
                            text24w600cblack('₹ 25,600')
                          ],
                        ),
                      ],
                    ),
                    sizedBoxHeight(5.h),
                    Row(
                      children: [
                        text14w400cAAAAAA('Total amount -'),
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
                                  size: 16,
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
                          SizedBox(height: 25.h),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text20w400c718EBF('Fuel'),
                                  Row(
                                    children: [
                                      text20w500c404E5A('₹ 20,000'),
                                      sizedBoxWidth(14),
                                      text16w400cA0ABBB('40%'),
                                    ],
                                  ),
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
                                  Row(
                                    children: [
                                      text20w500c404E5A('₹ 15,000'),
                                      sizedBoxWidth(14),
                                      text16w400cA0ABBB('35%'),
                                    ],
                                  )
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
                                  Row(
                                    children: [
                                      text20w500c404E5A('₹ 10,000'),
                                      sizedBoxWidth(14),
                                      text16w400cA0ABBB('20%'),
                                    ],
                                  )
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
                                  Row(
                                    children: [
                                      text20w500c404E5A('₹ 5,000'),
                                      sizedBoxWidth(14),
                                      text16w400cA0ABBB('10%'),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    sizedBoxHeight(20.h),
                    text20w400c343C6A('Total Spending\'s'),
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
                                text20w400c586CAD('Expense'),
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
                                text18w400c586CAD(
                                    '₹ 50,000'), // Current progress
                                text16w400cA0ABBB('40%'), // Total target
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
                            child: Container(
                              height: 55.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffE7EDFF)),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/png/taxBenefit.png',
                                  height: 24.h,
                                  width: 24.h,
                                ),
                              ),
                            ),
                          ),
                          sizedBoxWidth(10.w),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text20w400c586CAD('Tax benefit'),
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
                                text18w400c586CAD(
                                    '₹ 50,000'), // Current progress
                                text16w400cA0ABBB('40%'), // Total target
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
                            child: Container(
                              height: 55.h,
                              width: 55.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(99, 17, 203, 0.12)),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/png/giftCardIcon.png',
                                  width: 24.w,
                                  height: 24.h,
                                ),
                              ),
                            ),
                          ),
                          sizedBoxWidth(10.w),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text20w400c586CAD('Gift card'),
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
                                text18w400c586CAD(
                                    '₹ 50,000'), // Current progress
                                text16w400cA0ABBB('40%'), // Total target
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
          sizedBoxHeight(90.h),
        ],
      ),
    );
  }
}
