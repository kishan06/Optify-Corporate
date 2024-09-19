// ignore_for_file: file_names

import 'package:Optifii_Corporate/SideBar/ReportsPage/Report.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonModal.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey1 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey1,
      backgroundColor: const Color(0xFFFFFFFF),
      extendBody: true,
      drawer: CustomDrawer(), // Add this line
      body: Column(
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
                      _scaffoldKey1.currentState?.openDrawer();
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
                        // Add your navigation logic here
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
                        // Add your navigation logic here
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey1 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: _scaffoldKey1,
      backgroundColor: Colors.white,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Stack(
        children: [
          Positioned(
              child: Container(
            width: 10.w,
            decoration: const BoxDecoration(
              color: Color(0xff6311CB),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                sizedBoxHeight(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero, // Removes default padding
                      constraints:
                          const BoxConstraints(), // Ensures IconButton takes minimal space
                      onPressed: () {
                        Navigator.pop(context); // Closes the bottom sheet
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
                    _showProfileDrawer();
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 80.w,
                        height: 40.h,
                        decoration: const BoxDecoration(
                            color: Color(0xff6311CB),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )),
                        child: Image.asset(
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
                            const CircleAvatar(
                              radius:
                                  45, // Use radius instead of minRadius for more precise control
                              backgroundImage:
                                  AssetImage('assets/images/png/Avatar.png'),
                            ),
                            sizedBoxWidth(10.w), // Adjust the width as needed
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                        onTap: () {},
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
                        onTap: () {Get.to(Report());},
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
        ],
      ),
    );
  }
}

// class SwitchDrawer extends StatelessWidget {
//   const SwitchDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Colors.white,
//       shape: const ContinuousRectangleBorder(
//         borderRadius: BorderRadius.zero,
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               IconButton(
//                 padding: EdgeInsets.zero, // Removes default padding
//                 constraints:
//                     const BoxConstraints(), // Ensures IconButton takes minimal space
//                 onPressed: () {
//                   Navigator.pop(context); // Closes the bottom sheet
//                 },
//                 icon: const Icon(
//                   Icons.close,
//                   color: Color(0xff000000),
//                   size: 25,
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: <Widget>[
//                 DrawerHeader(
//                   decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.zero,
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           const CircleAvatar(
//                             radius:
//                                 45, // Use radius instead of minRadius for more precise control
//                             backgroundImage:
//                                 AssetImage('assets/images/png/Avatar.png'),
//                           ),
//                           sizedBoxWidth(10.w), // Adjust the width as needed
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               text22w600cblack('Reethik Thota'),
//                               sizedBoxHeight(0),
//                               text18w400c848484('Sr. Manager'),
//                               Row(
//                                 children: [
//                                   text20w400cpurple('View profile'),
//                                   const Icon(Icons.arrow_right_alt_outlined),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 sizedBoxHeight(10),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 16),
//                       child: text16w600c747294('MANAGE HUMAN RESOURCE'),
//                     ),
//                   ],
//                 ),
//                 sizedBoxHeight(10),
//                 ListTile(
//                   leading: SizedBox(
//                     width: 40.w,
//                     child: CircleAvatar(
//                       backgroundColor: const Color.fromARGB(133, 190, 182, 237),
//                       child: Image.asset(
//                         'assets/images/png/stamp-icon.png',
//                         width: 25.w,
//                         height: 25.h,
//                       ),
//                     ),
//                   ),
//                   title: text16w400c344054('Manage Approvers'),
//                   onTap: () {},
//                 ),
//                 sizedBoxHeight(10),
//                 ListTile(
//                   leading: SizedBox(
//                     width: 40.w,
//                     child: CircleAvatar(
//                       backgroundColor: const Color.fromARGB(133, 190, 182, 237),
//                       child: Image.asset(
//                         'assets/images/png/stamp-icon.png',
//                         width: 25.w,
//                         height: 25.h,
//                       ),
//                     ),
//                   ),
//                   title: text16w400c344054('Manage Department & Role'),
//                   onTap: () {},
//                 ),
//                 sizedBoxHeight(10),
//                 ListTile(
//                   leading: SizedBox(
//                     width: 40.w,
//                     child: CircleAvatar(
//                       backgroundColor: const Color.fromARGB(133, 190, 182, 237),
//                       child: Image.asset(
//                         'assets/images/png/stamp-icon.png',
//                         width: 25.w,
//                         height: 25.h,
//                       ),
//                     ),
//                   ),
//                   title: text16w400c344054('WDIPL Wallets'),
//                   onTap: () {},
//                 ),
//                 sizedBoxHeight(10),
//                 ListTile(
//                   leading: SizedBox(
//                     width: 40.w,
//                     child: CircleAvatar(
//                       backgroundColor: const Color.fromARGB(133, 190, 182, 237),
//                       child: Image.asset(
//                         'assets/images/png/stamp-icon.png',
//                         width: 25.w,
//                         height: 25.h,
//                       ),
//                     ),
//                   ),
//                   title: text16w400c344054('Gift & Reward'),
//                   onTap: () {},
//                 ),
//                 sizedBoxHeight(10),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 16),
//                       child: text16w600c747294('ANALYTICS'),
//                     ),
//                   ],
//                 ),
//                 sizedBoxHeight(10),
//                 ListTile(
//                   leading: SizedBox(
//                     width: 40.w,
//                     child: CircleAvatar(
//                       backgroundColor: const Color.fromARGB(133, 190, 182, 237),
//                       child: Image.asset(
//                         'assets/images/png/stamp-icon.png',
//                         width: 25.w,
//                         height: 25.h,
//                       ),
//                     ),
//                   ),
//                   title: text16w400c344054('Reports'),
//                   onTap: () {},
//                 ),
//                 sizedBoxHeight(10),
//                 ListTile(
//                   leading: SizedBox(
//                     width: 40.w,
//                     child: CircleAvatar(
//                       backgroundColor: const Color.fromARGB(133, 190, 182, 237),
//                       child: Image.asset(
//                         'assets/images/png/stamp-icon.png',
//                         width: 25.w,
//                         height: 25.h,
//                       ),
//                     ),
//                   ),
//                   title: text16w400c344054('Help & support'),
//                   onTap: () {},
//                 ),
//                 sizedBoxHeight(10),
//                 SizedBox(width: 100.w, child: const Divider()),
//                 sizedBoxHeight(10),
//                 ListTile(
//                   leading: SizedBox(
//                     width: 40.w,
//                     child: CircleAvatar(
//                       backgroundColor: const Color.fromARGB(133, 255, 255, 255),
//                       child: Image.asset(
//                         'assets/images/png/signout.png',
//                         width: 25.w,
//                       ),
//                     ),
//                   ),
//                   title: text16w400c344054('Sign Out'),
//                   onTap: () {
//                     print('ListTile tapped'); // Debugging statement
//                     dialogwidget();
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

void _showProfileDrawer() {
Drawer(
  width: 200.w,
  backgroundColor: Colors.purple,
);
}



void dialogwidget() {
  // Define the method to show a dialog or perform an action
}

