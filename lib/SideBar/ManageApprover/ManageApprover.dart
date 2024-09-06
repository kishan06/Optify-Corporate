// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';

class MangeApprove extends StatefulWidget {
  const MangeApprove({super.key});

  @override
  State<MangeApprove> createState() => _MangeApproveState();
}

class _MangeApproveState extends State<MangeApprove> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                      height: 600, // Height for the TabBarView
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
  final List<String> departments = [
    'Design',
    'Finance',
    'IT',
    'Development',
    'Sales',
    'QA',
  ];
  final List<String> departments2 = [
    'Design',
    'Finance',
    'IT',
    'Development',
    'Sales',
    'QA',
  ];

  List<bool> departmentChecked = [];
  List<bool> departmentChecked2 = [];

  @override
  void initState() {
    super.initState();
    // Initially, all checkboxes are unchecked
    departmentChecked = List<bool>.filled(departments.length, false);
    departmentChecked2 = List<bool>.filled(departments2.length, false);
  }

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 55.h,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffA0ABBB),
                        size: 25,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Color(0xffA0ABBB),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xffCDCDCD),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  width: 10.w), // Adding spacing between search and filter icon
              PopupMenuButton<String>(
                color: Colors.white,
                icon: Image.asset(
                  'assets/images/png/filter.png',
                  width: 25.w,
                ),
                onSelected: (value) {
                  // Handle the selected filter option
                  print("Selected filter: $value");
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Image(
                                  width: 20,
                                  image: AssetImage(
                                    'assets/images/png/filter.png',
                                  ),
                                ),
                                sizedBoxWidth(10),
                                text20w400cblack('Filter')
                              ],
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem<String>(
                      child: GFAccordion(
                        titleChild: const SizedBox(
                          width: 200,
                          child: Text(
                            'Department',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff3A3A3A),
                            ),
                          ),
                        ),
                        contentChild: Column(
                          children: List.generate(departments.length, (index) {
                            return CheckboxListTile(
                              title: Text(
                                departments[index],
                                style: const TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              value: departmentChecked[index],
                              onChanged: (bool? value) {
                                // Use setState from StatefulBuilder to update the checkbox
                                setState(() {
                                  departmentChecked[index] = value ?? false;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: const Color(0xff6311CB),
                              checkColor: const Color(0xffffffff),
                            );
                          }),
                        ),
                        collapsedIcon: const Icon(Icons.keyboard_arrow_down),
                        expandedIcon: const Icon(Icons.keyboard_arrow_up),
                        collapsedTitleBackgroundColor: Colors.transparent,
                        expandedTitleBackgroundColor: Colors.transparent,
                        contentBackgroundColor: Colors.transparent,
                        titleBorderRadius: BorderRadius.circular(0),
                        titlePadding: const EdgeInsets.all(10.0),
                        contentPadding: const EdgeInsets.all(0.0),
                        showAccordion: false,
                        margin: const EdgeInsets.all(0),
                      ),
                    ),
                    PopupMenuItem<String>(
                      child: GFAccordion(
                        titleChild: const SizedBox(
                          width: 200,
                          child: Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff3A3A3A),
                            ),
                          ),
                        ),
                        contentChild: Column(
                          children: List.generate(departments2.length, (index) {
                            return CheckboxListTile(
                              title: Text(
                                departments2[index],
                                style: const TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              value: departmentChecked2[index],
                              onChanged: (bool? value) {
                                // Use setState from StatefulBuilder to update the checkbox
                                setState(() {
                                  departmentChecked2[index] = value ?? false;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: const Color(0xff6311CB),
                              checkColor: const Color(0xffffffff),
                            );
                          }),
                        ),
                        collapsedIcon: const Icon(Icons.keyboard_arrow_down),
                        expandedIcon: const Icon(Icons.keyboard_arrow_up),
                        collapsedTitleBackgroundColor: Colors.transparent,
                        expandedTitleBackgroundColor: Colors.transparent,
                        contentBackgroundColor: Colors.transparent,
                        titleBorderRadius: BorderRadius.circular(0),
                        titlePadding: const EdgeInsets.all(10.0),
                        contentPadding: const EdgeInsets.all(0.0),
                        showAccordion: false,
                        margin: const EdgeInsets.all(0),
                      ),
                    ),
                    const PopupMenuItem<String>(
                      child: Column(
                        children: [
                          Divider(),
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: CustomGreyButton(
                                    text: 'Reset',
                                  )),
                              Expanded(
                                flex: 1,
                                child: CustomButton(text: 'Reset'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
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

class ExpenseBenefites extends StatelessWidget {
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
                  text16w400c585858(tite1),
                  sizedBoxHeight(10),
                  text16w400c585858(tite2),
                  sizedBoxHeight(10),
                  text16w400c585858(tite3),
                  sizedBoxHeight(10),
                  text16w400c585858(tite4),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text16w400cblack(subtitle1),
                  sizedBoxHeight(10),
                  text16w400cblack(subtitle2),
                  sizedBoxHeight(10),
                  text16w400cblack(subtitle3),
                  sizedBoxHeight(10),
                  text16w400cblack(subtitle4),
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
              const CircleAvatar(
                minRadius: 10,
                backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                child: Icon(Icons.arrow_drop_down),
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
                    header,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    mail,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed(RouteName.editdetails);
                },
                child: const Icon(
                  Icons.edit_sharp,
                  color: Color(0xff6311CB),
                  size: 25,
                ),
              ),
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
  final List<String> departments3 = [
    'Design',
    'Finance',
    'IT',
    'Development',
    'Sales',
    'QA',
  ];
  final List<String> departments4 = [
    'Design',
    'Finance',
    'IT',
    'Development',
    'Sales',
    'QA',
  ];

  List<bool> departmentChecked3 = [];
  List<bool> departmentChecked4 = [];

  @override
  void initState() {
    super.initState();
    // Initially, all checkboxes are unchecked
    departmentChecked3 = List<bool>.filled(departments3.length, false);
    departmentChecked4 = List<bool>.filled(departments4.length, false);
  }

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 55.h,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffA0ABBB),
                        size: 25,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: Color(0xffA0ABBB),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xffCDCDCD),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  width: 10.w), // Adding spacing between search and filter icon
              PopupMenuButton<String>(
                color: Colors.white,
                icon: Image.asset(
                  'assets/images/png/filter.png',
                  width: 25.w,
                ),
                onSelected: (value) {
                  // Handle the selected filter option
                  print("Selected filter: $value");
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      child: SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Image(
                                  width: 20,
                                  image: AssetImage(
                                    'assets/images/png/filter.png',
                                  ),
                                ),
                                sizedBoxWidth(10),
                                text20w400cblack('Filter')
                              ],
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem<String>(
                      child: GFAccordion(
                        titleChild: const SizedBox(
                          width: 200,
                          child: Text(
                            'Department',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff3A3A3A),
                            ),
                          ),
                        ),
                        contentChild: Column(
                          children: List.generate(departments3.length, (index) {
                            return CheckboxListTile(
                              title: Text(
                                departments3[index],
                                style: const TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              value: departmentChecked3[index],
                              onChanged: (bool? value) {
                                // Use setState from StatefulBuilder to update the checkbox
                                setState(() {
                                  departmentChecked3[index] = value ?? false;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: const Color(0xff6311CB),
                              checkColor: const Color(0xffffffff),
                            );
                          }),
                        ),
                        collapsedIcon: const Icon(Icons.keyboard_arrow_down),
                        expandedIcon: const Icon(Icons.keyboard_arrow_up),
                        collapsedTitleBackgroundColor: Colors.transparent,
                        expandedTitleBackgroundColor: Colors.transparent,
                        contentBackgroundColor: Colors.transparent,
                        titleBorderRadius: BorderRadius.circular(0),
                        titlePadding: const EdgeInsets.all(10.0),
                        contentPadding: const EdgeInsets.all(0.0),
                        showAccordion: false,
                        margin: const EdgeInsets.all(0),
                      ),
                    ),
                    PopupMenuItem<String>(
                      child: GFAccordion(
                        titleChild: const SizedBox(
                          width: 200,
                          child: Text(
                            'Status',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff3A3A3A),
                            ),
                          ),
                        ),
                        contentChild: Column(
                          children: List.generate(departments4.length, (index) {
                            return CheckboxListTile(
                              title: Text(
                                departments4[index],
                                style: const TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              value: departmentChecked4[index],
                              onChanged: (bool? value) {
                                // Use setState from StatefulBuilder to update the checkbox
                                setState(() {
                                  departmentChecked4[index] = value ?? false;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: const Color(0xff6311CB),
                              checkColor: const Color(0xffffffff),
                            );
                          }),
                        ),
                        collapsedIcon: const Icon(Icons.keyboard_arrow_down),
                        expandedIcon: const Icon(Icons.keyboard_arrow_up),
                        collapsedTitleBackgroundColor: Colors.transparent,
                        expandedTitleBackgroundColor: Colors.transparent,
                        contentBackgroundColor: Colors.transparent,
                        titleBorderRadius: BorderRadius.circular(0),
                        titlePadding: const EdgeInsets.all(10.0),
                        contentPadding: const EdgeInsets.all(0.0),
                        showAccordion: false,
                        margin: const EdgeInsets.all(0),
                      ),
                    ),
                    const PopupMenuItem<String>(
                      child: Column(
                        children: [
                          Divider(),
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: CustomGreyButton(
                                    text: 'Reset',
                                  )),
                              Expanded(
                                flex: 1,
                                child: CustomButton(text: 'Reset'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
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

deletewidget() {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.white,
      child: SizedBox(
        height: 240.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/png/delete.png',
                    width: 50.w,
                    height: 50.h,
                  ),
                ],
              ),
              sizedBoxHeight(10.h),
              text18w400cblack(
                "Are you sure you want delete approver?",
              ),
              sizedBoxHeight(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Center(
                      child: Container(
                        width: 130.w,
                        height: 40.h,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xff6311CB),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Text(
                          'Yes, I do',
                          style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Medium',
                          ),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxWidth(10),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 130.w,
                      height: 40.h,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 231, 229, 237),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Text(
                        'No, don’t',
                        style: TextStyle(
                          color: const Color(0xff344054),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Gilroy-Medium',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
