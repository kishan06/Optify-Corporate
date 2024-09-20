// ignore_for_file: avoid_print, file_names

import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/VoucherTab/CommonWidgets/CustomButtonIconLeft.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonModal.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class PullBackFund extends StatefulWidget {
  const PullBackFund({super.key});

  @override
  State<PullBackFund> createState() => _PullBackFundState();
}

class _PullBackFundState extends State<PullBackFund> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppbar(titleTxt: 'Pull back funds'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  CommonTabBar(tabs: [
                    Tab(
                      text: 'Expense',
                    ),
                    Tab(
                      text: 'Benefit',
                    ),
                    Tab(
                      text: 'Gift',
                    ),
                  ]),
                  SizedBox(
                    height: 900, // Height for the TabBarView
                    child: TabBarView(
                      children: [
                        Expense(),
                        Benefit(),
                        Gift(),
                      ],
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
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  final List<String> departments = [
    'Design',
    'Finance',
    'IT',
    'Development',
    'Sales',
    'QA',
  ];

  bool isExpenseChecked = false; // "Select All" checkbox state

  void toggleSelectAll(bool? value) {
    setState(() {
      isExpenseChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          sizedBoxHeight(15),
          Row(
            children: [
              Checkbox(
                value: isExpenseChecked,
                onChanged: (bool? value) {
                  toggleSelectAll(value);
                },
              ),
              text18w400cblack('Select All'),
            ],
          ),
          ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'WD-0956',
            isChecked: isExpenseChecked, // Pass the "Select All" state
            onCheckedChanged: (bool? value) {
              setState(() {
                isExpenseChecked = value ?? false;
              });
            },
          ),
          const Divider(),
          ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'WD-0956',
            isChecked: isExpenseChecked, // Pass the "Select All" state
            onCheckedChanged: (bool? value) {
              setState(() {
                isExpenseChecked = value ?? false;
              });
            },
          ),
          const Divider(),
          ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'WD-0956',
            isChecked: isExpenseChecked, // Pass the "Select All" state
            onCheckedChanged: (bool? value) {
              setState(() {
                isExpenseChecked = value ?? false;
              });
            },
          ),
          const Divider(),
          ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'WD-0956',
            isChecked: isExpenseChecked, // Pass the "Select All" state
            onCheckedChanged: (bool? value) {
              setState(() {
                isExpenseChecked = value ?? false;
              });
            },
          ),
          const Divider(),
          ExpenseBenefites(
            tite1: 'Department',
            tite2: 'Approver for',
            tite3: 'Wallet type',
            tite4: 'Wallet assigned',
            subtitle1: ': Design',
            subtitle2: ': Bills',
            subtitle3: ': Expense',
            subtitle4: ': Fuel, food, travel',
            header: 'Reethik thota',
            mail: 'WD-0956',
            isChecked: isExpenseChecked, // Pass the "Select All" state
            onCheckedChanged: (bool? value) {
              setState(() {
                isExpenseChecked = value ?? false;
              });
            },
          ),
          const Divider(),
          // Add more ExpenseBenefites instances if needed...
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
  final bool? isChecked; // Is the checkbox checked?
  final ValueChanged<bool?>? onCheckedChanged; // Callback for checkbox change

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
    this.isChecked,
    this.onCheckedChanged,
  });

  @override
  State<ExpenseBenefites> createState() => _ExpenseBenefitesState();
}

class _ExpenseBenefitesState extends State<ExpenseBenefites> {
  bool isFoodChecked = false;

  @override
  void didUpdateWidget(ExpenseBenefites oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update internal state based on the parent state
    if (widget.isChecked != null && widget.isChecked != oldWidget.isChecked) {
      setState(() {
        isFoodChecked = widget.isChecked!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Checkbox(
                value: isFoodChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isFoodChecked = value ?? false;
                    if (widget.onCheckedChanged != null) {
                      widget.onCheckedChanged!(value);
                    }

                    // Open the BottomSheet when the checkbox is clicked
                    if (value == true) {
                      WithdrawSummary(context);
                    }
                  });
                },
                materialTapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // Shrink checkbox padding
                visualDensity: VisualDensity.compact, // Further reduces padding
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                minRadius: 10,
                backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                child: Icon(Icons.arrow_drop_down),
              ),
              sizedBoxWidth(10),
              Image.asset(
                'assets/images/png/Avatar.png',
                width: 50,
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
        ],
      ),
      collapsedIcon: const SizedBox.shrink(),
      expandedIcon: const SizedBox.shrink(),
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

  Future<dynamic> WithdrawSummary(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          // height: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              text16w400cblack('Summary of withdraw'),
              sizedBoxHeight(10.h),
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Food'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Food'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                  Container(
                    child: Row(
                      children: [
                        text18w400c848484('Books & periodicals'),
                        sizedBoxWidth(10.w),
                        const Icon(
                          Icons.close,
                          color: Color(0xff848484),
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  sizedBoxWidth(10.w),
                ],
              ),
              sizedBoxHeight(20.h),
              text18w400c848484('Amount to pull back'),
              sizedBoxHeight(5.h),
              text20w400cblack('₹ 10,000'),
              sizedBoxHeight(20.h),
              SizedBox(
                width: double.infinity,
                child: CustomButtonIconLeft(
                  image: 'assets/images/png/pullbackfund.png',
                  text: 'Pull back funds',
                  ontap: () {
                    withdrawwidget();
                  },
                ),
              )
            ],
          ),
        );
      },
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
    return const SingleChildScrollView();
  }
}

class Gift extends StatefulWidget {
  const Gift({
    super.key,
  });

  @override
  State<Gift> createState() => _GiftState();
}

class _GiftState extends State<Gift> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView();
  }
}
