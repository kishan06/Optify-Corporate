import 'package:Optifii_Corporate/MainScreen/RequestTab/ApprovedTab/ApprovedTab.dart';
import 'package:Optifii_Corporate/MainScreen/RequestTab/Common/CustomTab.dart';
import 'package:Optifii_Corporate/MainScreen/RequestTab/ReimburseTab/ReimburseTab.dart';
import 'package:Optifii_Corporate/MainScreen/RequestTab/RejectedTab/RejectedTab.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonBottomNavigationBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/MainScreen.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFFFF),
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff6311CB),
          title: text24w400cffffff('Requests'),
          centerTitle: false,
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(mainController: mainController),
      body: Column(
        children: [
          sizedBoxHeight(19.h),

          /// Padding around the entire TabBar area
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF7F5FF),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TabBar(
                        controller: _tabController,
                        indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        dividerColor: Colors.transparent,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorPadding: const EdgeInsets.only(left: 2,right: 16),
                        labelPadding: EdgeInsets.zero,
                        tabs: [
                          CustomTab(label: 'Reimburse'),
                          CustomTab(label: 'Approved'),
                          CustomTab(label: 'Rejected'),
                        ],
                      ),
                    ),
                  
                  ],
                ),
              ),
            ),
          ),

          /// The content below the TabBar
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [Reimbursetab(), Approvedtab(), Rejectedtab()],
            ),
          ),
        ],
      ),
    );
  }
}
