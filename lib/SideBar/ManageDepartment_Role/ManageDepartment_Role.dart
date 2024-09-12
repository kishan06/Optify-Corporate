// ignore_for_file: camel_case_types, file_names, avoid_print

import 'package:Optifii_Corporate/SideBar/Profile/Profile.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonModal.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class Department_Role extends StatefulWidget {
  const Department_Role({super.key});

  @override
  State<Department_Role> createState() => _Department_RoleState();
}

class _Department_RoleState extends State<Department_Role> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppbar(titleTxt: 'Manage department & roles'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  CommonTabBar(tabs: [
                    Tab(
                      text: 'Department',
                    ),
                    Tab(
                      text: 'Role',
                    ),
                    Tab(
                      text: 'Permissions',
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: SizedBox(
                      height: 600, // Height for the TabBarView
                      child: TabBarView(
                        children: [
                          Department(),
                          Role(),
                          Permission(),
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

class Department extends StatefulWidget {
  final bool? isChecked;
  final ValueChanged<bool?>? onCheckedChanged;

  const Department({
    super.key,
    this.isChecked,
    this.onCheckedChanged,
  });

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
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
              text: 'Add department',
              ontap: () {
                Get.toNamed(RouteName.addDepartment);
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
                            'Created by',
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
          const DepartmentAccordian(
            tite1: 'Created by',
            tite2: 'Approved by',
            subtitle1: ': Reethik thota',
            subtitle2: ': Pooja patade',
            header: 'Finance',
            mail: 'Created on - 20 June 2024',
          ),
          const Divider(),
          const DepartmentAccordian(
            tite1: 'Created by',
            tite2: 'Approved by',
            subtitle1: ': Reethik thota',
            subtitle2: ': Pooja patade',
            header: 'Finance',
            mail: 'Created on - 20 June 2024',
          ),
          const Divider(),
          const DepartmentAccordian(
            tite1: 'Created by',
            tite2: 'Approved by',
            subtitle1: ': Reethik thota',
            subtitle2: ': Pooja patade',
            header: 'Finance',
            mail: 'Created on - 20 June 2024',
          ),
          const Divider(),
          const DepartmentAccordian(
            tite1: 'Created by',
            tite2: 'Approved by',
            subtitle1: ': Reethik thota',
            subtitle2: ': Pooja patade',
            header: 'Finance',
            mail: 'Created on - 20 June 2024',
          ),
          const Divider(),
          const DepartmentAccordian(
            tite1: 'Created by',
            tite2: 'Approved by',
            subtitle1: ': Reethik thota',
            subtitle2: ': Pooja patade',
            header: 'Finance',
            mail: 'Created on - 20 June 2024',
          ),
          const Divider(),
          const DepartmentAccordian(
            tite1: 'Created by',
            tite2: 'Approved by',
            subtitle1: ': Reethik thota',
            subtitle2: ': Pooja patade',
            header: 'Finance',
            mail: 'Created on - 20 June 2024',
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class DepartmentAccordian extends StatelessWidget {
  final String tite1;
  final String tite2;
  final String? tite3;
  final String? tite4;
  final String subtitle1;
  final String subtitle2;
  final String? subtitle3;
  final String? subtitle4;
  final String header;
  final String mail;
  const DepartmentAccordian({
    super.key,
    required this.tite1,
    required this.tite2,
    this.tite3,
    this.tite4,
    required this.subtitle1,
    required this.subtitle2,
    this.subtitle3,
    this.subtitle4,
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
                ],
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text16w400cblack(subtitle1),
                  sizedBoxHeight(10),
                  text16w400cblack(subtitle2),
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
                child: Icon(Icons.keyboard_arrow_down),
              ),
              sizedBoxWidth(10),
              Image.asset(
                'assets/images/png/imag455.png',
                width: 40,
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    mail,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffA0ABBB)),
                  ),
                ],
              ),
            ],
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

class Permission extends StatefulWidget {
  const Permission({
    super.key,
  });

  @override
  State<Permission> createState() => _PermissionState();
}

class _PermissionState extends State<Permission> {
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
                            'Created by',
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
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxWidth(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(RouteName.editrole);
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
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxWidth(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(RouteName.editrole);
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
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxWidth(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(RouteName.editrole);
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
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxWidth(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(RouteName.editrole);
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
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxWidth(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(RouteName.editrole);
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
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
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
                ),
              ],
            ),
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class Role extends StatefulWidget {
  const Role({
    super.key,
  });

  @override
  State<Role> createState() => _RoleState();
}

class _RoleState extends State<Role> {
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
              text: 'Add role',
              ontap: () {
                Get.toNamed(RouteName.addrole);
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
                            'Created by',
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
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
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
                ),
              ],
            ),
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
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
                ),
              ],
            ),
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
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
                ),
              ],
            ),
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
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
                ),
              ],
            ),
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
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
                ),
              ],
            ),
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
          GFAccordion(
            contentChild: Column(
              // Using contentChild instead of content
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400c585858('Role'),
                        const SizedBox(height: 10),
                        text16w400c585858('Created by'),
                        const SizedBox(height: 10),
                        text16w400c585858('Approver for'),
                        const SizedBox(height: 10),
                        text16w400c585858('Permissions'),
                        const SizedBox(height: 10),
                      ],
                    ),
                    sizedBoxWidth(20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cblack(': Finance'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Pooja patade'),
                        const SizedBox(height: 10),
                        text16w400cblack(': Expense wallet'),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonTag(tag: 'Manage human resource'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage subadmin'),
                            SizedBox(
                              height: 5,
                            ),
                            CommonTag(tag: 'Manage reports'),
                            // Add more tags if needed
                          ],
                        ),
                      ],
                    )
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
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                    sizedBoxWidth(10),
                    Image.asset(
                      'assets/images/png/imag455.png',
                      width: 40,
                    ),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sr. manager",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Created on - 20 June 2024",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA0ABBB)),
                        ),
                      ],
                    ),
                  ],
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
                ),
              ],
            ),
            collapsedTitleBackgroundColor: Colors.transparent,
            expandedTitleBackgroundColor:
                const Color.fromRGBO(99, 17, 203, 0.04),
            contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
            titleBorderRadius: BorderRadius.circular(0),
            collapsedIcon: const SizedBox.shrink(),
            expandedIcon: const SizedBox.shrink(),
            titlePadding: const EdgeInsets.all(16.0),
            contentPadding: const EdgeInsets.all(16.0),
            showAccordion: false,
            margin: const EdgeInsets.all(0),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
