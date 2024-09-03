import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/sized_box.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final GlobalKey<ScaffoldState> _scaffoldKey1 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey1,
      backgroundColor: const Color(0xFFFFFFFF),
      extendBody: true,
      drawer: _buildDrawer(), // Add this line
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

  Widget _buildDrawer() {
    return Drawer(
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        children: [
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
              )
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        minRadius: 45,
                        backgroundImage: AssetImage(
                          'assets/images/png/Avatar.png',
                        ),
                      ),
                      sizedBoxWidth(10.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text22w600cblack('Reethik thota'),
                          text18w400c848484('Sr. Manager'),
                          Row(
                            children: [
                              text20w400cpurple('View profile'),
                              const Icon(Icons.arrow_right_alt_outlined),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    // Add your navigation logic here
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {
                    // Add your navigation logic here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
