// ignore_for_file: avoid_print, file_names

import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/VoucherTab/CommonWidgets/CustomButtonIconLeft.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonModal.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/SearchBar_Filter.dart';
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
 


 
  bool isExpenseChecked = false;

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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SearchBarFilter()
          ),

          Row(
            children: [
              sizedBoxWidth(8.w),
              Transform.scale(
                scale: 1.05.h,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  side: BorderSide(color: Color(0xffD0D5DD), width: 1.5.w),
                  activeColor: const Color(0xff6311CB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.r)),
                  ),
                  value: isExpenseChecked,
                  checkColor: Color(0xFFffffff),
                  onChanged: (bool? value) {
                    toggleSelectAll(value);
                  },
                ),
              ),
              sizedBoxWidth(4.w),
              text18w400cblack('Select All'),
            ],
          ),
          const Divider(),
          ExpenseBenefites(
            isChecked: isExpenseChecked, // Pass the "Select All" state
            onCheckedChanged: (bool? value) {
              setState(() {
                isExpenseChecked = value ?? false;
              });
            },
          ),
          const Divider(),ExpenseBenefites(
         
            isChecked: isExpenseChecked, // Pass the "Select All" state
            onCheckedChanged: (bool? value) {
              setState(() {
                isExpenseChecked = value ?? false;
              });
            },
          ),
          const Divider(),
          ExpenseBenefites(
         
            isChecked: isExpenseChecked, // Pass the "Select All" state
            onCheckedChanged: (bool? value) {
              setState(() {
                isExpenseChecked = value ?? false;
              });
            },
          ),
          const Divider(),
          ExpenseBenefites(
 
            isChecked: isExpenseChecked, // Pass the "Select All" state
            onCheckedChanged: (bool? value) {
              setState(() {
                isExpenseChecked = value ?? false;
              });
            },
          ),
          const Divider(),
          ExpenseBenefites(

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
  final bool? isChecked; // Is the checkbox checked?
  final ValueChanged<bool?>? onCheckedChanged;

  const ExpenseBenefites({
    super.key,
    this.isChecked,
    this.onCheckedChanged,
  });

  @override
  State<ExpenseBenefites> createState() => _ExpenseBenefitesState();
}

class _ExpenseBenefitesState extends State<ExpenseBenefites> {
  bool isFoodChecked = false;

  // @override
  // void didUpdateWidget(ExpenseBenefites oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   // Update internal state based on the parent state
  //   if (widget.isChecked != null && widget.isChecked != oldWidget.isChecked) {
  //     setState(() {
  //       isFoodChecked = widget.isChecked!;
  //     });
  //   }
  // }

  bool isExpanded = true;
  bool isExpenseChecked = false;

  void toggleSelectAll(bool? value) {
    setState(() {
      isExpenseChecked = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      contentChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  children: [
                    text20w400c667085('Department'),
                    sizedBoxWidth(30.w),
                    text20w400c464748(':'),
                    sizedBoxWidth(12.w),
                    text20w400c464748('Design')
                  ],
                ),
              ),
            ],
          ),
          sizedBoxHeight(8.h),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  children: [
                    text20w400c667085('Email Address'),
                    sizedBoxWidth(8.w),
                    text20w400c464748(':'),
                    sizedBoxWidth(12.w),
                    text20w400c464748('rethik@wdipl.com')
                  ],
                ),
              ),
            ],
          ),
          sizedBoxHeight(16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              color: Color.fromRGBO(99, 17, 203, 0.2),
            ),
          ),
          sizedBoxHeight(16.h),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text18w400c343C6A('Select wallet for pull back funds'),
              sizedBoxHeight(12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.05.h,
                        child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(
                              color: Color(0xffD0D5DD), width: 1.5.w),
                          activeColor: const Color(0xff6311CB),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.r)),
                          ),
                          value: isExpenseChecked,
                          checkColor: Color(0xFFffffff),
                          onChanged: (bool? value) {
                            toggleSelectAll(value);
                          },
                        ),
                      ),

                      text20w400c4E4E4E('Food') 

                    ],
                  ),

                  text18w400c111111('₹ 500')

                ],
              )  ,
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.05.h,
                        child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(
                              color: Color(0xffD0D5DD), width: 1.5.w),
                          activeColor: const Color(0xff6311CB),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.r)),
                          ),
                          value: isExpenseChecked,
                          checkColor: Color(0xFFffffff),
                          onChanged: (bool? value) {
                            toggleSelectAll(value);
                          },
                        ),
                      ),

                      text20w400c4E4E4E('Fuel') 

                    ],
                  ),

                  text18w400c111111('₹ 500')

                ],
              ), 
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.05.h,
                        child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(
                              color: Color(0xffD0D5DD), width: 1.5.w),
                          activeColor: const Color(0xff6311CB),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.r)),
                          ),
                          value: isExpenseChecked,
                          checkColor: Color(0xFFffffff),
                          onChanged: (bool? value) {
                            toggleSelectAll(value);
                          },
                        ),
                      ),

                      text20w400c4E4E4E('Travel') 

                    ],
                  ),

                  text18w400c111111('₹ 500')

                ],
              ) ,
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.05.h,
                        child: Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          side: BorderSide(
                              color: Color(0xffD0D5DD), width: 1.5.w),
                          activeColor: const Color(0xff6311CB),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(2.r)),
                          ),
                          value: isExpenseChecked,
                          checkColor: Color(0xFFffffff),
                          onChanged: (bool? value) {
                            toggleSelectAll(value);
                          },
                        ),
                      ),

                      text20w400c4E4E4E('Telecom') 

                    ],
                  ),

                  text18w400c111111('₹ 500')

                ],
              )
            ],
          )
        ],
      ),
      onToggleCollapsed: (collapsed) {
        setState(() {
          isExpanded = !collapsed;
        });
      },
      titleChild: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Transform.scale(
                scale: 1.05.h,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  side: BorderSide(color: Color(0xffD0D5DD), width: 1.5.w),
                  activeColor: const Color(0xff6311CB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2.r)),
                  ),
                  value: isFoodChecked,
                  checkColor: Color(0xFFffffff),
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
                ),
              ),
            ],
          ),
          sizedBoxWidth(8.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 21.h,
                width: 21.w,
                child: Image.asset(
                  isExpanded
                      ? 'assets/images/png/arrow_down.png'
                      : 'assets/images/png/arrow_up.png',
                ),
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
                    'Reethik thota',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'WD-0956',
                    style: TextStyle(
                        fontFamily: 'TT Commons',
                        color: Color(0xffA0ABBB),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
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
      titlePadding: const EdgeInsets.all(10.0),
      contentPadding: const EdgeInsets.all(10.0),
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
                  image: 'assets/images/png/pullback.png',
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
