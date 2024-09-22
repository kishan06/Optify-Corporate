// ignore_for_file: file_names

import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonBottomNavigationBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonCard.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/MainScreen.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({super.key});

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey1 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey1,
      backgroundColor: const Color(0xFFFFFFFF),
      extendBody: true,
      bottomNavigationBar:
          CustomBottomNavigationBar(mainController: mainController),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                // height: 250.h,
                decoration: const BoxDecoration(
                  color: Color(0xff6311CB),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff7F8CB6),
                      offset: Offset(0.0, 0.0),
                      blurRadius: 4.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Column(
                  children: [
                    AppBar(
                      scrolledUnderElevation: 0.0,
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      backgroundColor: const Color(0xff6311CB),
                      titleSpacing: 0,
                      title: text24w600cwhite('Employees'),
                    ),
                    sizedBoxHeight(20.h),
                    InkWell(
                      onTap: () {
                        Get.toNamed(RouteName.employeedetails);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text26w600c3725EA('250'),
                                text16w400c718EBF('Total employees')
                              ],
                            ),
                            Image.asset(
                              'assets/images/png/images.png',
                              width: 150.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonCard(
                          content: GFAccordion(
                            contentChild: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                sizedBoxHeight(40.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/png/sales.png",
                                          width: 50,
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            text20w600c252C32('Sales'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text14w400c718EBF('Total department'),
                                        text20w600c252C32('15'),
                                      ],
                                    ),
                                  ],
                                ),
                                sizedBoxHeight(30.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/png/design.png",
                                          width: 50,
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            text20w600c252C32('Design'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text14w400c718EBF('Total department'),
                                        text20w600c252C32('15'),
                                      ],
                                    ),
                                  ],
                                ),
                                sizedBoxHeight(30.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/png/IT.png",
                                          width: 50,
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            text20w600c252C32('IT'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text14w400c718EBF('Total department'),
                                        text20w600c252C32('15'),
                                      ],
                                    ),
                                  ],
                                ),
                                sizedBoxHeight(30.h),
                              ],
                            ),
                            titleChild: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/png/total-department.png",
                                      width: 50,
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            text18w400c718EBF(
                                                'Total department'),
                                          ],
                                        ),
                                        text20w400cblack('15')
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            collapsedIcon: const CircleAvatar(
                              minRadius: 10,
                              backgroundColor:
                                  Color.fromRGBO(98, 17, 203, 0.178),
                              child: Icon(Icons.keyboard_arrow_down_outlined),
                            ),
                            expandedIcon: const CircleAvatar(
                              minRadius: 10,
                              backgroundColor:
                                  Color.fromRGBO(98, 17, 203, 0.178),
                              child: Icon(Icons.keyboard_arrow_up_outlined),
                            ),
                            collapsedTitleBackgroundColor: Colors.transparent,
                            expandedTitleBackgroundColor: Colors.transparent,
                            contentBackgroundColor: Colors.transparent,
                            titleBorderRadius: BorderRadius.circular(0),
                            titlePadding: const EdgeInsets.all(0.0),
                            contentPadding: const EdgeInsets.all(0.0),
                            showAccordion: false,
                            margin: const EdgeInsets.all(0),
                          ),
                        ),
                        sizedBoxHeight(15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            text18w400c3A3472('Employee KYC'),
                            InkWell(
                                onTap: () {
                                  Get.toNamed(RouteName.employeelist);
                                },
                                child: text16w400cpurple('View Employees'))
                          ],
                        ),
                        sizedBoxHeight(20.h),
                        CommonCard(
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  text18w400c718EBF('Pending KYC'),
                                ],
                              ),
                              sizedBoxHeight(15.h),
                              // Add progress bar
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                  value: 0.6, // Example progress value (60%)
                                  minHeight: 6,
                                  backgroundColor: Colors.grey[300],
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color(0xffE29603)),
                                ),
                              ),
                              sizedBoxHeight(15.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text12w400cE29603(
                                      '60% (120)'), // Current progress
                                  text12w400cE29603(
                                      '100% (260)'), // Total target
                                ],
                              ),
                            ],
                          ),
                        ),
                        sizedBoxHeight(20.h),
                        CommonCard(
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  text18w400c718EBF('Minimum KYC'),
                                ],
                              ),
                              sizedBoxHeight(15.h),
                              // Add progress bar
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                  value: 0.6, // Example progress value (60%)
                                  minHeight: 6,
                                  backgroundColor: Colors.grey[300],
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color(0xff3725EA)),
                                ),
                              ),
                              sizedBoxHeight(15.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text12w400c3725EA('60% ( 120)'),
                                  text12w400c3725EA('100% ( 260)'),
                                ],
                              )
                            ],
                          ),
                        ),
                        sizedBoxHeight(20.h),
                        CommonCard(
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  text18w400c718EBF('Maximum KYC'),
                                ],
                              ),
                              sizedBoxHeight(15.h),
                              // Add progress bar
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                  value: 0.6, // Example progress value (60%)
                                  minHeight: 6,
                                  backgroundColor: Colors.grey[300],
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color(0xff3725EA)),
                                ),
                              ),
                              sizedBoxHeight(15.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  text12w400c3725EA('60% ( 120)'),
                                  text12w400c3725EA('100% ( 260)'),
                                ],
                              )
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
        ],
      ),
    );
  }
}
