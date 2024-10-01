// ignore_for_file: unnecessary_import, unused_import, file_names

import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/DigitalTab/DigitalTab.dart';
import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/PhysicalTab/PhysicalTab.dart';
import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/VoucherTab/VoucherTab.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonBottomNavigationBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/MainScreen.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/CommonWidgets/sized_box.dart';

class GiftVoucherPage extends StatefulWidget {
  const GiftVoucherPage({super.key});

  @override
  State<GiftVoucherPage> createState() => _GiftVoucherPageState();
}

class _GiftVoucherPageState extends State<GiftVoucherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFFFF),
      extendBody: true,
      bottomNavigationBar:
          CustomBottomNavigationBar(mainController: mainController),
      appBar: const CommonAppbar(titleTxt: 'Gift card & voucher'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: text20w600c252C32('Application status'),
          ),
          sizedBoxHeight(22),
          const DefaultTabController(
            length: 3,
            child: Column(
              children: [
                CommonTabBar(tabs: [
                  Tab(text: 'Digital'),
                  Tab(text: 'Physical'),
                  Tab(text: 'Voucher'),
                ]),
                SizedBox(
                  height:
                      900, // Wrap TabBarView with Expanded to avoid overflow
                  child: TabBarView(
                    children: [Digitaltab(), Physicaltab(), Vouchertab()],
                  ),
                ),
              ],
            ),
          ),
          sizedBoxHeight(90.h),
        ],
      ),
    );
  }
}
