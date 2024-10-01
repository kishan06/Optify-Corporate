// ignore_for_file: file_names

import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
// import 'package:getflutter/getflutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: const CommonAppbar(
        titleTxt: 'My profile',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage(
                    'assets/images/png/Avatar.png',
                  ),
                ),
                sizedBoxHeight(10.h),
                text22w400c383838('Reethik thota'),
                text16w400c585858('Finance - Sr. Manager'),
                sizedBoxHeight(20),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteName.editprofile);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff6311CB),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.edit,
                          color: Color(0xff6311CB),
                          size: 20,
                        ),
                        sizedBoxWidth(5),
                        text14w400c6311CB('Edit')
                      ],
                    ),
                  ),
                ),
                sizedBoxHeight(30),
                GFAccordion(
                  contentChild: Column(
                    // Using contentChild instead of content
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: text16w400c585858('Employee ID : ')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          Expanded(flex: 1, child: text16w400cblack('WD-974')),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: text16w400c585858('Member since : ')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          Expanded(
                              flex: 1, child: text16w400cblack('20 June 2022')),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              flex: 1, child: text16w400c585858('Phone : ')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          Expanded(
                              flex: 1,
                              child: text16w400cblack('+91 4578451245')),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              flex: 1, child: text16w400c585858('Email : ')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          Expanded(
                              flex: 1,
                              child: text16w400cblack('poojashah@wdipl.com')),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              flex: 1, child: text16w400c585858('Grade : ')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          Expanded(flex: 1, child: text16w400cblack('A01')),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                  titleChild: Row(
                    children: [
                      Image.asset(
                        'assets/images/png/frame3.png',
                        width: 50,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Personal Information',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  collapsedTitleBackgroundColor: Colors.transparent,
                  expandedTitleBackgroundColor:
                      const Color.fromRGBO(99, 17, 203, 0.04),
                  contentBackgroundColor:
                      const Color.fromRGBO(99, 17, 203, 0.04),
                  titleBorderRadius: BorderRadius.circular(0),
                  collapsedIcon: const CircleAvatar(
                    minRadius: 10,
                    backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xff6311CB),
                    ),
                  ),
                  expandedIcon: const CircleAvatar(
                      minRadius: 10,
                      backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                      child: Icon(
                        Icons.keyboard_arrow_up_outlined,
                        color: Color(0xff6311CB),
                      )),
                  titlePadding: const EdgeInsets.all(10.0),
                  contentPadding: const EdgeInsets.all(10.0),
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
                        children: [
                          Expanded(flex: 1, child: text16w400c585858('Role :')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          Expanded(
                              flex: 1, child: text16w400cblack('Approver')),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: text16w400c585858('Permissions :')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          const Expanded(
                            flex: 1,
                            child: Wrap(
                              verticalDirection: VerticalDirection.up,
                              spacing: 4.0, // Space between tags
                              runSpacing: 4.0, // Space between rows of tags
                              children: [
                                CommonTag(tag: 'Manage human resource'),
                                CommonTag(tag: 'Manage subadmin'),
                                CommonTag(tag: 'Manage reports'),
                                // Add more CommonTags if needed
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                  titleChild: Row(
                    children: [
                      Image.asset(
                        'assets/images/png/frame1.png',
                        width: 50,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Roles & permissions',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  collapsedTitleBackgroundColor: Colors.transparent,
                  expandedTitleBackgroundColor:
                      const Color.fromRGBO(99, 17, 203, 0.04),
                  contentBackgroundColor:
                      const Color.fromRGBO(99, 17, 203, 0.04),
                  titleBorderRadius: BorderRadius.circular(0),
                  collapsedIcon: const CircleAvatar(
                    minRadius: 10,
                    backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xff6311CB),
                    ),
                  ),
                  expandedIcon: const CircleAvatar(
                      minRadius: 10,
                      backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                      child: Icon(
                        Icons.keyboard_arrow_up_outlined,
                        color: Color(0xff6311CB),
                      )),
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
                        children: [
                          Expanded(
                              flex: 1,
                              child: text16w400c585858('Company name : ')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          Expanded(
                              flex: 1,
                              child:
                                  text16w400cblack('Website Developers India')),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: text16w400c585858('Industry :  ')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          Expanded(flex: 1, child: text16w400cblack('Fintech')),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                              flex: 1, child: text16w400c585858('Type : ')),
                          const SizedBox(height: 10),
                          sizedBoxWidth(10),
                          Expanded(
                              flex: 1,
                              child:
                                  text16w400cblack('Private limited company')),
                        ],
                      ),
                    ],
                  ),
                  titleChild: Row(
                    children: [
                      Image.asset(
                        'assets/images/png/frame2.png',
                        width: 50,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Company details',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  collapsedTitleBackgroundColor: Colors.transparent,
                  expandedTitleBackgroundColor:
                      const Color.fromRGBO(99, 17, 203, 0.04),
                  contentBackgroundColor:
                      const Color.fromRGBO(99, 17, 203, 0.04),
                  titleBorderRadius: BorderRadius.circular(0),
                  collapsedIcon: const CircleAvatar(
                    minRadius: 10,
                    backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xff6311CB),
                    ),
                  ),
                  expandedIcon: const CircleAvatar(
                      minRadius: 10,
                      backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                      child: Icon(
                        Icons.keyboard_arrow_up_outlined,
                        color: Color(0xff6311CB),
                      )),
                  titlePadding: const EdgeInsets.all(16.0),
                  contentPadding: const EdgeInsets.all(16.0),
                  showAccordion: false,
                  margin: const EdgeInsets.all(0),
                ),
                const Divider(),
                GFAccordion(
                  contentChild: const Column(
                    // Using contentChild instead of content
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                  titleChild: Row(
                    children: [
                      Image.asset(
                        'assets/images/png/frame3.png',
                        width: 50,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Package details',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  collapsedTitleBackgroundColor: Colors.transparent,
                  expandedTitleBackgroundColor:
                      const Color.fromRGBO(99, 17, 203, 0.04),
                  contentBackgroundColor:
                      const Color.fromRGBO(99, 17, 203, 0.04),
                  titleBorderRadius: BorderRadius.circular(0),
                  collapsedIcon: const CircleAvatar(
                    minRadius: 10,
                    backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Color(0xff6311CB),
                    ),
                  ),
                  expandedIcon: const CircleAvatar(
                      minRadius: 10,
                      backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
                      child: Icon(
                        Icons.keyboard_arrow_up_outlined,
                        color: Color(0xff6311CB),
                      )),
                  titlePadding: const EdgeInsets.all(16.0),
                  contentPadding: const EdgeInsets.all(16.0),
                  showAccordion: false,
                  margin: const EdgeInsets.all(0),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CommonTag extends StatelessWidget {
  final String tag;
  const CommonTag({
    super.key,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2)),
          color: Color.fromARGB(112, 223, 223, 223)),
      child: text14w400c6311CB(tag),
    );
  }
}
