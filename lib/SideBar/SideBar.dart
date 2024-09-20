// ignore_for_file: file_names

import 'package:Optifii_Corporate/SideBar/ReportsPage/Report.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonModal.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool isswitchprofile = false;
  bool isprofile1 = false;
  bool isprofile2 = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  sizedBoxHeight(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Color(0xff000000),
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isswitchprofile = !isswitchprofile;
                      });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 20, top: 10, bottom: 10),
                          width: isswitchprofile ? 140.w : 50.w,
                          height: 40.h,
                          decoration: const BoxDecoration(
                              color: Color(0xff6311CB),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )),
                          child: Image.asset(
                            alignment: Alignment.centerRight,
                            'assets/images/png/switch.png',
                            height: 15.h,
                            width: 20.w,
                          ),
                        ),
                        sizedBoxHeight(10.h),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                            right: 15,
                            bottom: 15,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage(
                                  isprofile1
                                      ? 'assets/images/png/Avatar.png'
                                      : isprofile2
                                          ? 'assets/images/png/admin.png'
                                          : 'assets/images/png/Avatar.png',
                                ),
                              ),
                              sizedBoxWidth(10.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text22w600cblack('Reethik Thota'),
                                  sizedBoxHeight(0),
                                  text18w400c848484('Sr. Manager'),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(RouteName.profile);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        text20w400cpurple('View profile'),
                                        const Icon(
                                          Icons.arrow_right,
                                          color: Color(0xff6211CB),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        sizedBoxHeight(10),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: text16w600c747294('MANAGE HUMAN RESOURCE'),
                            ),
                          ],
                        ),
                        sizedBoxHeight(10),
                        ListTile(
                          leading: SizedBox(
                            width: 40.w,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(133, 190, 182, 237),
                              child: Image.asset(
                                'assets/images/png/stamp-icon.png',
                                width: 25.w,
                                height: 25.h,
                              ),
                            ),
                          ),
                          title: text16w400c344054('Manage Approvers'),
                          onTap: () {
                            Get.toNamed(RouteName.manageapprover);
                          },
                        ),
                        sizedBoxHeight(10),
                        ListTile(
                          leading: SizedBox(
                            width: 40.w,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(133, 190, 182, 237),
                              child: Image.asset(
                                'assets/images/png/stamp-icon.png',
                                width: 25.w,
                                height: 25.h,
                              ),
                            ),
                          ),
                          title: text16w400c344054('Manage Department & Role'),
                          onTap: () {
                            Get.toNamed(RouteName.managedepartment_role);
                          },
                        ),
                        sizedBoxHeight(10),
                        ListTile(
                          leading: SizedBox(
                            width: 40.w,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(133, 190, 182, 237),
                              child: Image.asset(
                                'assets/images/png/stamp-icon.png',
                                width: 25.w,
                                height: 25.h,
                              ),
                            ),
                          ),
                          title: text16w400c344054('WDIPL Wallets'),
                          onTap: () {
                            Get.toNamed(RouteName.wallets);
                          },
                        ),
                        sizedBoxHeight(10),
                        ListTile(
                          leading: SizedBox(
                            width: 40.w,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(133, 190, 182, 237),
                              child: Image.asset(
                                'assets/images/png/stamp-icon.png',
                                width: 25.w,
                                height: 25.h,
                              ),
                            ),
                          ),
                          title: text16w400c344054('Gift & Reward'),
                          onTap: () {
                            Get.toNamed(RouteName.giftvoucherpage);
                          },
                        ),
                        sizedBoxHeight(10),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: text16w600c747294('ANALYTICS'),
                            ),
                          ],
                        ),
                        sizedBoxHeight(10),
                        ListTile(
                          leading: SizedBox(
                            width: 40.w,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(133, 190, 182, 237),
                              child: Image.asset(
                                'assets/images/png/stamp-icon.png',
                                width: 25.w,
                                height: 25.h,
                              ),
                            ),
                          ),
                          title: text16w400c344054('Reports'),
                          onTap: () {
                            Get.to(const Report());
                          },
                        ),
                        sizedBoxHeight(10),
                        ListTile(
                          leading: SizedBox(
                            width: 40.w,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(133, 190, 182, 237),
                              child: Image.asset(
                                'assets/images/png/stamp-icon.png',
                                width: 25.w,
                                height: 25.h,
                              ),
                            ),
                          ),
                          title: text16w400c344054('Help & support'),
                          onTap: () {
                            Get.toNamed(RouteName.helpandsupport);
                          },
                        ),
                        sizedBoxHeight(10),
                        const Divider(),
                        sizedBoxHeight(10),
                        ListTile(
                          leading: SizedBox(
                            width: 40.w,
                            child: CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(133, 255, 255, 255),
                              child: Image.asset(
                                'assets/images/png/signout.png',
                                width: 25.w,
                              ),
                            ),
                          ),
                          title: text16w400c344054('Sign Out'),
                          onTap: () {
                            dialogwidget();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: isswitchprofile ? 100.w : 10.w,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 98, 17, 203),
            ),
            child: Column(
              children: [
                sizedBoxHeight(130.h),
                // Profile Switcher for Employee and Admin
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isprofile1 = true;
                          isprofile2 = false;
                        });
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 65.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isprofile1
                                    ? const Color(0xff00A438)
                                    : Colors.transparent,
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: Image.asset(
                                'assets/images/png/Avatar.png'), // Employee image
                          ),
                          isprofile1
                              ? const Positioned(
                                  bottom: 0,
                                  right: 8,
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff00A438),
                                    minRadius: 8,
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                    text14w400cffffff('Employee'),
                  ],
                ),
                sizedBoxHeight(20.h),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isprofile1 = false;
                          isprofile2 = true;
                        });
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 65.w,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isprofile2
                                    ? const Color(0xff00A438)
                                    : Colors.transparent,
                                width: 2,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: Image.asset(
                                'assets/images/png/admin.png'), // Admin image
                          ),
                          isprofile2
                              ? const Positioned(
                                  bottom: 0,
                                  right: 8,
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff00A438),
                                    minRadius: 8,
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                    text14w400cffffff('Admin'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
