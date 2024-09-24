import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/FAQ/AllTab/AllTab.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Total number of tabs
      child: Scaffold(
        backgroundColor: AppColors.secondary,
        appBar: const CommonAppbar(titleTxt: 'FAQ'),
        body: Column(
          children: [
            Container(
              height: 42.h,
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.zero,

                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  gradient: const LinearGradient(
                    colors: [Color(0xff3725EA), Color(0xff5E0FCD)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: const Color(0xff5B5B5B),
                dividerColor: Colors.transparent,
                indicatorPadding: const EdgeInsets.only(
                    top: 1,
                    right: 7,
                    bottom: 2,
                    left: 7), // Adjusted padding to match label
                tabs: [
                  _buildTab('All'),
                  _buildTab('Expense'),
                  _buildTab('Benefit'),
                  _buildTab('Giftcards'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  AllTab(),
                  Center(child: Text('Expense Content')),
                  Center(child: Text('Benefit Content')),
                  Center(child: Text('Giftcards Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Tab(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffBDBDBD),
            ),
            borderRadius: BorderRadius.circular(21),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: 'TT Commons',
                fontWeight: FontWeight.w400,
              ), // Adjusted font size
            ),
          ),
        ),
      ),
    );
  }
}
