// ignore_for_file: avoid_print, file_names

import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonModal.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/SearchBar_Filter.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class MangeApprove extends StatefulWidget {
  const MangeApprove({super.key});

  @override
  State<MangeApprove> createState() => _MangeApproveState();
}

class _MangeApproveState extends State<MangeApprove> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppbar(titleTxt: 'Approvers'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  CommonTabBar(tabs: [
                    Tab(
                      text: 'Expense',
                    ),
                    Tab(
                      text: 'Benefit',
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.9, // Height for the TabBarView
                      child: TabBarView(
                        children: [
                          Expense(),
                          Benefit(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Expense extends StatefulWidget {
  final bool? isChecked;
  final ValueChanged<bool?>? onCheckedChanged;

  const Expense({
    super.key,
    this.isChecked,
    this.onCheckedChanged,
  });

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {





  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          sizedBoxHeight(15),
          Center(
            child: CustomButtonIcon(
              icon: Icons.add,
              text: 'Add approver',
              ontap: () {
                Get.toNamed(RouteName.addapprover);
              },
            ),
          ),
          sizedBoxHeight(30),
          SearchBarFilter(),
          sizedBoxHeight(25),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class ExpenseBenefites extends StatefulWidget {
  final String tite1;
  final String tite2;
  final String tite3;
  final String tite4;
  final String subtitle1;
  final String subtitle2;
  final String subtitle3;
  final String subtitle4;
  final String header;
  final String mail;
  const ExpenseBenefites({
    super.key,
    required this.tite1,
    required this.tite2,
    required this.tite3,
    required this.tite4,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
    required this.subtitle4,
    required this.header,
    required this.mail,
  });

  @override
  State<ExpenseBenefites> createState() => _ExpenseBenefitesState();
}

class _ExpenseBenefitesState extends State<ExpenseBenefites> {
  bool isExpanded = true; 

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      onToggleCollapsed: (value) {
        // Use the callback to update the state
        setState(() {
          isExpanded = !value;
        });
      },
      contentChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text16w400c585858(widget.tite1),
                  sizedBoxHeight(10),
                  text16w400c585858(widget.tite2),
                  sizedBoxHeight(10),
                  text16w400c585858(widget.tite3),
                  sizedBoxHeight(10),
                  text16w400c585858(widget.tite4),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text16w400cblack(widget.subtitle1),
                  sizedBoxHeight(10),
                  text16w400cblack(widget.subtitle2),
                  sizedBoxHeight(10),
                  text16w400cblack(widget.subtitle3),
                  sizedBoxHeight(10),
                  text16w400cblack(widget.subtitle4),
                ],
              ),
            ],
          ),
        ],
      ),
      titleChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 21.h,
                width: 21.h,
                child: Image.asset(
                  isExpanded
                      ? 'assets/images/png/arrow_down.png'
                      : 'assets/images/png/arrow_up.png',
                ),
              ),
              sizedBoxWidth(10),
              Image.asset(
                'assets/images/png/Avatar.png',
                width: 40,
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.header,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.mail,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Get.toNamed(RouteName.editdetails);
                  },
                  child: Image.asset(
                    'assets/images/png/edit.png',
                    height: 24.h,
                    width: 24.w,
                  )),
              sizedBoxWidth(5),
              InkWell(
                onTap: () {
                  deletewidget();
                },
                child: const Icon(
                  Icons.delete_outline_outlined,
                  color: Color(0xffEE1B24),
                  size: 25,
                ),
              )
            ],
          ),
        ],
      ),
      collapsedIcon: const SizedBox.shrink(), // Remove collapsed icon
      expandedIcon: const SizedBox.shrink(), // Remove expanded icon
      collapsedTitleBackgroundColor: Colors.transparent,
      expandedTitleBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
      contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
      titleBorderRadius: BorderRadius.circular(0),
      titlePadding: const EdgeInsets.all(16.0),
      contentPadding: const EdgeInsets.all(16.0),
      showAccordion: false,
      margin: const EdgeInsets.all(0),
    );
  }
}

class Benefit extends StatefulWidget {
  const Benefit({
    super.key,
  });

  @override
  State<Benefit> createState() => _BenefitState();
}

class _BenefitState extends State<Benefit> {



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          sizedBoxHeight(15),
          Center(
            child: CustomButtonIcon(
              icon: Icons.add,
              text: 'Add approver',
              ontap: () {
                Get.toNamed(RouteName.addapprover);
              },
            ),
          ),
          sizedBoxHeight(30),
            SearchBarFilter(),
          sizedBoxHeight(25),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
          const ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'reethikthota@wdipl.com',
          ),
          const Divider(),
        ],
      ),
    );
  }
}
