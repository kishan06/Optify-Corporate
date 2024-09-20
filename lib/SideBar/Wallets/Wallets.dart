// ignore_for_file: avoid_print, file_names

import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class Wallets extends StatefulWidget {
  const Wallets({super.key});

  @override
  State<Wallets> createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppbar(titleTxt: 'Wallets'),
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
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: TabBarView(
                        children: [
                          ExpenseWallet(),
                          BenefitWallet(),
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

class ExpenseWallet extends StatefulWidget {
  final bool? isChecked;
  final ValueChanged<bool?>? onCheckedChanged;

  const ExpenseWallet({
    super.key,
    this.isChecked,
    this.onCheckedChanged,
  });

  @override
  State<ExpenseWallet> createState() => _ExpenseWalletState();
}

class _ExpenseWalletState extends State<ExpenseWallet> {
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
                                child: CustomButton(text: 'Filter'),
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
          const ExpenseBenefitesWallet(
            title1: 'Wallet type : ',
            active: 'Active',
            title2: 'Department : ',
            title3: 'Wallet amount : ',
            title4: 'Created by : ',
            title5: 'Approved by : ',
            subtitle1: 'Prefilled',
            subtitle2: 'Sales',
            subtitle3: '₹ 50,000',
            subtitle4: 'Reethik Thota',
            subtitle5: 'Manav Sain',
            header: 'Food',
            mail: 'Created on 12 June 2024',
            image: 'assets/images/png/Food.png',
          ),
          const Divider(),
          const ExpenseBenefitesWallet(
            title1: 'Wallet type : ',
            active: 'Active',
            title2: 'Department : ',
            title3: 'Wallet amount : ',
            title4: 'Created by : ',
            title5: 'Approved by : ',
            subtitle1: 'Prefilled',
            subtitle2: 'Sales',
            subtitle3: '₹ 50,000',
            subtitle4: 'Reethik Thota',
            subtitle5: 'Manav Sain',
            header: 'Fuel',
            mail: 'Created on 12 June 2024',
            image: 'assets/images/png/Fuel.png',
          ),
          const Divider(),
          const ExpenseBenefitesWallet(
            title1: 'Wallet type : ',
            active: 'Active',
            title2: 'Department : ',
            title3: 'Wallet amount : ',
            title4: 'Created by : ',
            title5: 'Approved by : ',
            subtitle1: 'Prefilled',
            subtitle2: 'Sales',
            subtitle3: '₹ 50,000',
            subtitle4: 'Reethik Thota',
            subtitle5: 'Manav Sain',
            header: 'Gifts',
            mail: 'Created on 12 June 2024',
            image: 'assets/images/png/Gifts.png',
          ),
          const Divider(),
          const ExpenseBenefitesWallet(
            title1: 'Wallet type : ',
            active: 'Active',
            title2: 'Department : ',
            title3: 'Wallet amount : ',
            title4: 'Created by : ',
            title5: 'Approved by : ',
            subtitle1: 'Prefilled',
            subtitle2: 'Sales',
            subtitle3: '₹ 50,000',
            subtitle4: 'Reethik Thota',
            subtitle5: 'Manav Sain',
            header: 'Telecom',
            mail: 'Created on 12 June 2024',
            image: 'assets/images/png/Telecom.png',
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class ExpenseBenefitesWallet extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  final String subtitle1;
  final String subtitle2;
  final String subtitle3;
  final String subtitle4;
  final String subtitle5;
  final String header;
  final String mail;
  final String image;
  final String active;
  const ExpenseBenefitesWallet({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
    required this.subtitle4,
    required this.subtitle5,
    required this.header,
    required this.mail,
    required this.image,
    required this.active,
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
                  text16w400c585858(title1),
                  sizedBoxHeight(10),
                  text16w400c585858(title2),
                  sizedBoxHeight(10),
                  text16w400c585858(title3),
                  sizedBoxHeight(10),
                  text16w400c585858(title4),
                  sizedBoxHeight(10),
                  text16w400c585858(title5),
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
                  sizedBoxHeight(10),
                  text16w400cblack(subtitle5),
                ],
              ),
            ],
          ),
          sizedBoxHeight(20),
          CustomButton(
            text: 'View wallet',
            ontap: () {
              Get.toNamed(RouteName.viewwallets);
            },
          )
        ],
      ),
      titleChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              sizedBoxWidth(10),
              Image.asset(
                image,
                width: 50,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        header,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      sizedBoxWidth(5),
                      Text(
                        active,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff00A438)),
                      ),
                    ],
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
        ],
      ),
      collapsedIcon: const CircleAvatar(
        minRadius: 10,
        backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
        child: Icon(Icons.keyboard_arrow_down_outlined),
      ),
      expandedIcon: const CircleAvatar(
        minRadius: 10,
        backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
        child: Icon(Icons.keyboard_arrow_up_outlined),
      ),
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

class BenefitWallet extends StatefulWidget {
  const BenefitWallet({
    super.key,
  });

  @override
  State<BenefitWallet> createState() => _BenefitWalletState();
}

class _BenefitWalletState extends State<BenefitWallet> {
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
                                child: CustomButton(text: 'Filter'),
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
          const ExpenseBenefitesWallet(
            title1: 'Wallet type : ',
            active: 'Active',
            title2: 'Department : ',
            title3: 'Wallet amount : ',
            title4: 'Created by : ',
            title5: 'Approved by : ',
            subtitle1: 'Prefilled',
            subtitle2: 'Sales',
            subtitle3: '₹ 50,000',
            subtitle4: 'Reethik Thota',
            subtitle5: 'Manav Sain',
            header: 'Food',
            mail: 'Created on 12 June 2024',
            image: 'assets/images/png/Food.png',
          ),
          const Divider(),
          const ExpenseBenefitesWallet(
            title1: 'Wallet type : ',
            active: 'Active',
            title2: 'Department : ',
            title3: 'Wallet amount : ',
            title4: 'Created by : ',
            title5: 'Approved by : ',
            subtitle1: 'Prefilled',
            subtitle2: 'Sales',
            subtitle3: '₹ 50,000',
            subtitle4: 'Reethik Thota',
            subtitle5: 'Manav Sain',
            header: 'Fuel',
            mail: 'Created on 12 June 2024',
            image: 'assets/images/png/Fuel.png',
          ),
          const Divider(),
          const ExpenseBenefitesWallet(
            title1: 'Wallet type : ',
            active: 'Active',
            title2: 'Department : ',
            title3: 'Wallet amount : ',
            title4: 'Created by : ',
            title5: 'Approved by : ',
            subtitle1: 'Prefilled',
            subtitle2: 'Sales',
            subtitle3: '₹ 50,000',
            subtitle4: 'Reethik Thota',
            subtitle5: 'Manav Sain',
            header: 'Gifts',
            mail: 'Created on 12 June 2024',
            image: 'assets/images/png/Gifts.png',
          ),
          const Divider(),
          const ExpenseBenefitesWallet(
            title1: 'Wallet type : ',
            active: 'Active',
            title2: 'Department : ',
            title3: 'Wallet amount : ',
            title4: 'Created by : ',
            title5: 'Approved by : ',
            subtitle1: 'Prefilled',
            subtitle2: 'Sales',
            subtitle3: '₹ 50,000',
            subtitle4: 'Reethik Thota',
            subtitle5: 'Manav Sain',
            header: 'Telecom',
            mail: 'Created on 12 June 2024',
            image: 'assets/images/png/Telecom.png',
          ),
          const Divider(),
        ],
      ),
    );
  }
}
