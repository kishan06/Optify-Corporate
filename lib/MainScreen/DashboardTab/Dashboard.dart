import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optifii_Corporate/SideMenun/SideMenu.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/sized_box.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey1 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey1,
      backgroundColor: const Color(0xFFFFFFFF),
      extendBody: true,
      drawer: const SideMenu(), // Drawer added here
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
