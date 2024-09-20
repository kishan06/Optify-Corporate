import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(titleTxt: 'Employee KYC list'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
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
                      width: 10
                          .w), // Adding spacing between search and filter icon
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
                              children:
                                  List.generate(departments.length, (index) {
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
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  activeColor: const Color(0xff6311CB),
                                  checkColor: const Color(0xffffffff),
                                );
                              }),
                            ),
                            collapsedIcon:
                                const Icon(Icons.keyboard_arrow_down),
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
                              children:
                                  List.generate(departments2.length, (index) {
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
                                      departmentChecked2[index] =
                                          value ?? false;
                                    });
                                  },
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  activeColor: const Color(0xff6311CB),
                                  checkColor: const Color(0xffffffff),
                                );
                              }),
                            ),
                            collapsedIcon:
                                const Icon(Icons.keyboard_arrow_down),
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
              sizedBoxHeight(30.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteName.employeedetails);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/png/Avatar.png',
                            width: 60.w,
                          ),
                          sizedBoxWidth(10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text20w400c252C32('Reethik thota'),
                              text16w400cA0ABBB('WD-0956'),
                            ],
                          )
                        ],
                      ),
                    ),
                    text15w400cyellow('Pending')
                  ],
                ),
              ),
              sizedBoxHeight(5.h),
              const Divider(),
              sizedBoxHeight(5.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteName.employeedetails);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/png/Avatar.png',
                            width: 60.w,
                          ),
                          sizedBoxWidth(10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text20w400c252C32('Reethik thota'),
                              text16w400cA0ABBB('WD-0956'),
                            ],
                          )
                        ],
                      ),
                    ),
                    text15w400c3725EA('Min KYC')
                  ],
                ),
              ),
              sizedBoxHeight(5.h),
              const Divider(),
              sizedBoxHeight(5.h),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteName.employeedetails);
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/png/Avatar.png',
                            width: 60.w,
                          ),
                          sizedBoxWidth(10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text20w400c252C32('Reethik thota'),
                              text16w400cA0ABBB('WD-0956'),
                            ],
                          )
                        ],
                      ),
                    ),
                    text15w400c3725EA('Full KYC')
                  ],
                ),
              ),
              sizedBoxHeight(5.h),
              const Divider(),
              sizedBoxHeight(5.h),
            ],
          ),
        ),
      ),
    );
  }
}
