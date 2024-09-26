import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({super.key});

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
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
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0.0,
        backgroundColor: const Color(0xFFffffff),
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 1,
        title: Padding(
          padding: EdgeInsets.only(right: 16.w, top: 10.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              'Employee list',
              softWrap: true,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Gilroy-SemiBold',
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF000000),
              ),
            ),
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Row(
                children: [
                  sizedBoxWidth(10.w),
                  Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 20.sp,
                    ),
                  ),
                ],
              )),
        ),
        actions: <Widget>[
          SizedBox(width: 50.w, child: const PopupMenuExample()),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff7F8CB6),
                  offset: Offset(0.0, 0.0),
                  blurRadius: 4.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            child: Row(
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
                SizedBox(width: 10.w),
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
                                    departmentChecked2[index] = value ?? false;
                                  });
                                },
                                controlAffinity:
                                    ListTileControlAffinity.leading,
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
          ),
          sizedBoxHeight(30.h),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  EmployeeListDetails(
                    tite1: 'Department',
                    tite2: 'Mobile number',
                    tite3: 'Member since',
                    tite4: 'Email Address',
                    subtitle1: ': Design',
                    subtitle2: ': +91 4578454121',
                    subtitle3: ': 3 Jan, 2022',
                    subtitle4: ': reethik@wdipl.com',
                    header: 'Reethik thota',
                    mail: 'WD-0956',
                  ),
                  Divider(),
                  EmployeeListDetails(
                    tite1: 'Department',
                    tite2: 'Mobile number',
                    tite3: 'Member since',
                    tite4: 'Email Address',
                    subtitle1: ': Design',
                    subtitle2: ': +91 4578454121',
                    subtitle3: ': 3 Jan, 2022',
                    subtitle4: ': reethik@wdipl.com',
                    header: 'Reethik thota',
                    mail: 'WD-0956',
                  ),
                  Divider(),
                  EmployeeListDetails(
                    tite1: 'Department',
                    tite2: 'Mobile number',
                    tite3: 'Member since',
                    tite4: 'Email Address',
                    subtitle1: ': Design',
                    subtitle2: ': +91 4578454121',
                    subtitle3: ': 3 Jan, 2022',
                    subtitle4: ': reethik@wdipl.com',
                    header: 'Reethik thota',
                    mail: 'WD-0956',
                  ),
                  Divider(),
                  EmployeeListDetails(
                    tite1: 'Department',
                    tite2: 'Mobile number',
                    tite3: 'Member since',
                    tite4: 'Email Address',
                    subtitle1: ': Design',
                    subtitle2: ': +91 4578454121',
                    subtitle3: ': 3 Jan, 2022',
                    subtitle4: ': reethik@wdipl.com',
                    header: 'Reethik thota',
                    mail: 'WD-0956',
                  ),
                  Divider(),
                  EmployeeListDetails(
                    tite1: 'Department',
                    tite2: 'Mobile number',
                    tite3: 'Member since',
                    tite4: 'Email Address',
                    subtitle1: ': Design',
                    subtitle2: ': +91 4578454121',
                    subtitle3: ': 3 Jan, 2022',
                    subtitle4: ': reethik@wdipl.com',
                    header: 'Reethik thota',
                    mail: 'WD-0956',
                  ),
                  Divider(),
                  EmployeeListDetails(
                    tite1: 'Department',
                    tite2: 'Mobile number',
                    tite3: 'Member since',
                    tite4: 'Email Address',
                    subtitle1: ': Design',
                    subtitle2: ': +91 4578454121',
                    subtitle3: ': 3 Jan, 2022',
                    subtitle4: ': reethik@wdipl.com',
                    header: 'Reethik thota',
                    mail: 'WD-0956',
                  ),
                  Divider(),
                  EmployeeListDetails(
                    tite1: 'Department',
                    tite2: 'Mobile number',
                    tite3: 'Member since',
                    tite4: 'Email Address',
                    subtitle1: ': Design',
                    subtitle2: ': +91 4578454121',
                    subtitle3: ': 3 Jan, 2022',
                    subtitle4: ': reethik@wdipl.com',
                    header: 'Reethik thota',
                    mail: 'WD-0956',
                  ),
                  Divider(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  SampleItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: PopupMenuButton<SampleItem>(
          color: const Color(0xffffffff),
          initialValue: selectedItem,
          onSelected: (SampleItem item) {
            setState(() {
              selectedItem = item;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
            PopupMenuItem<SampleItem>(
              onTap: () {
                Get.toNamed(RouteName.addemployee);
              },
              value: SampleItem.itemOne,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/png/addemployee.png',
                    width: 20.w,
                  ),
                  sizedBoxWidth(10.w),
                  const Text('Add employee'),
                ],
              ),
            ),
            PopupMenuItem<SampleItem>(
              onTap: () {
                Get.toNamed(RouteName.pullbackfund);
              },
              value: SampleItem.itemTwo,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/png/pullbackfund.png',
                    width: 20.w,
                  ),
                  sizedBoxWidth(10.w),
                  const Text('Pull back funds'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmployeeListDetails extends StatefulWidget {
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
  const EmployeeListDetails({
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
  State<EmployeeListDetails> createState() => _EmployeeListDetailsState();
}

class _EmployeeListDetailsState extends State<EmployeeListDetails> {

bool isExpanded = false;




  @override
  Widget build(BuildContext context) {
    return GFAccordion(
      onToggleCollapsed: (collapsed) {
        setState(() {
          isExpanded = !collapsed;
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
                width: 21.w,
                child: Image.asset(
                  isExpanded ?
                  'assets/images/png/arrow_down.png'
                  : 'assets/images/png/arrow_up.png' ,
                
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
          InkWell(
            onTap: () {
              Get.toNamed(RouteName.employeeview);
            },
            child: text16w400c6311CB('View details'),
          ),
        ],
      ),
      collapsedIcon: const SizedBox.shrink(), // Remove collapsed icon
      expandedIcon: const SizedBox.shrink(), // Remove expanded icon
      collapsedTitleBackgroundColor: Colors.transparent,
      expandedTitleBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
      contentBackgroundColor: const Color.fromRGBO(99, 17, 203, 0.04),
      titleBorderRadius: BorderRadius.circular(0),
      titlePadding: const EdgeInsets.all(10.0),
      contentPadding: const EdgeInsets.only(top: 8,left: 40,bottom: 8,right: 8),
      showAccordion: false,
      margin: const EdgeInsets.all(0),
    );
  }
}
