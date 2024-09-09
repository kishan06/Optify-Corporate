import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/SearchBar_Filter.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:mat_month_picker_dialog/mat_month_picker_dialog.dart';

class ViewWallets extends StatefulWidget {
  final bool customBack = false;
  final bool? isChecked;
  final ValueChanged<bool?>? onCheckedChanged;

  const ViewWallets({super.key, this.isChecked, this.onCheckedChanged});

  @override
  State<ViewWallets> createState() => _ViewWalletsState();
}

class _ViewWalletsState extends State<ViewWallets> {
  @override
  Widget build(BuildContext context) {
    double totalAmount = 200000;
    double balaceview = 150000;
    double progress = balaceview / totalAmount;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xff6311CB),
            ),
            child: Column(
              children: [
                AppBar(
                  backgroundColor: const Color(0xff6311CB),
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
                                color: Colors.white,
                                size: 20.sp,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Image.asset(
                  'assets/images/png/img1.png',
                  width: 70.w,
                ),
                sizedBoxHeight(15.h),
                text24w600cwhite('Food'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text14w400cF4F4F4('Created on 12 June 2024'),
                    Container(
                      width: 8.w,
                      height: 8.h,
                      decoration: const BoxDecoration(
                          color: Color(0xffF4F4F4),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                    text14w400cF4F4F4('Created by Reethik thota'),
                  ],
                ),
                sizedBoxHeight(20.h),
                LinearProgressIndicator(
                  value: progress,
                  minHeight: 6,
                  backgroundColor: Colors.grey[300],
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  valueColor: const AlwaysStoppedAnimation<Color>(
                      Color.fromARGB(67, 98, 17, 203)),
                ),
                sizedBoxHeight(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cEBEBEB('Wallet amount'),
                        text20w600cwhite('₹ 50,000')
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text16w400cEBEBEB('Remaining amount'),
                        text20w600cwhite('₹ 25,000')
                      ],
                    ),
                  ],
                ),
                sizedBoxHeight(10.h),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  children: [
                    sizedBoxHeight(10.h),
                    Row(
                      children: [
                        text20w600c252C32('Members'),
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    const SearchBarFilter(),
                    sizedBoxHeight(20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            final selected = await showMonthPicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1970),
                              lastDate: DateTime(2050),
                            );
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration:
                                const BoxDecoration(color: Color(0xffF2EEF8)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.calendar_today,
                                  color: Color(0xff6311CB),
                                ),
                                sizedBoxWidth(5.w),
                                text14w400c6311CB('Jan 30, 2024'),
                                sizedBoxWidth(5.w),
                                const Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xff6311CB),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff6311CB),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.notifications_active_outlined,
                                color: Color(0xff6311CB),
                                size: 18,
                              ),
                              sizedBoxWidth(5.w),
                              text14w400c6311CB('Send reminder to all'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    const ExpenseBenefitesWallet(
                      title1: 'Received amount ',
                      title2: 'Balance remaining',
                      title3: 'Report status',
                      subtitle1: ': ₹ 25,000',
                      subtitle2: ': 15,000',
                      header: 'Reethik thota',
                      mail: 'WD-0956',
                      image: 'assets/images/png/Avatar.png',
                    ),
                    const Divider(),
                    const ExpenseBenefitesWallet(
                      title1: 'Received amount ',
                      title2: 'Balance remaining',
                      title3: 'Report status',
                      subtitle1: ': ₹ 25,000',
                      subtitle2: ': 15,000',
                      header: 'Reethik thota',
                      mail: 'WD-0956',
                      image: 'assets/images/png/Avatar.png',
                    ),
                    const Divider(),
                    const ExpenseBenefitesWallet(
                      title1: 'Received amount ',
                      title2: 'Balance remaining',
                      title3: 'Report status',
                      subtitle1: ': ₹ 25,000',
                      subtitle2: ': 15,000',
                      header: 'Reethik thota',
                      mail: 'WD-0956',
                      image: 'assets/images/png/Avatar.png',
                    ),
                    const Divider(),
                    const ExpenseBenefitesWallet(
                      title1: 'Received amount ',
                      title2: 'Balance remaining',
                      title3: 'Report status',
                      subtitle1: ': ₹ 25,000',
                      subtitle2: ': 15,000',
                      header: 'Reethik thota',
                      mail: 'WD-0956',
                      image: 'assets/images/png/Avatar.png',
                    ),
                    const Divider(),
                    const ExpenseBenefitesWallet(
                      title1: 'Received amount ',
                      title2: 'Balance remaining',
                      title3: 'Report status',
                      subtitle1: ': ₹ 25,000',
                      subtitle2: ': 15,000',
                      header: 'Reethik thota',
                      mail: 'WD-0956',
                      image: 'assets/images/png/Avatar.png',
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExpenseBenefitesWallet extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final String subtitle1;
  final String subtitle2;
  final String header;
  final String mail;
  final String image;
  const ExpenseBenefitesWallet({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.subtitle1,
    required this.subtitle2,
    required this.header,
    required this.mail,
    required this.image,
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
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      border: Border.all(color: const Color(0xff00A438)),
                    ),
                    child: const Text(
                      'Approved',
                      style: TextStyle(
                        color: Color(0xff00A438),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          sizedBoxHeight(20),
          CustomButtonIcon(
            text: 'View Report',
            icon: Icons.receipt_long_rounded,
            ontap: () {
              Get.toNamed(RouteName.viewreport);
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
                  Text(
                    header,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  sizedBoxWidth(5),
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
