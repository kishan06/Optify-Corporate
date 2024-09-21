import 'package:Optifii_Corporate/SideBar/ReportsPage/ExpenseTab/ExpenseTab.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: CommonAppbar(titleTxt: 'Reports'),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            CommonTabBar(tabs: [
              Tab(text: 'Expense'),
              Tab(text: 'Benefit'),
              Tab(text: 'Gift & Voucher'),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: TabBarView(
                children: [
                  ExpenseTab(),
                  Center(
                    child: Text('benefit'),
                  ),
                  Center(
                    child: Text('Gift and voucher'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
