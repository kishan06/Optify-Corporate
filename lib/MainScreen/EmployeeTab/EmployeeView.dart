import 'package:Optifii_Corporate/MainScreen/EmployeeTab/PullBackFund.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTabBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';

class EmployeeView extends StatefulWidget {
  const EmployeeView({super.key});

  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
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
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Icon(
                  Icons.delete_outline_outlined,
                  color: Color(0xFFF01414),
                ),
                Text(
                  'Delete employee',
                  style: TextStyle(
                    color: Color(0xFFF01414),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/png/Avatar.png',
                        width: 80.w,
                        height: 80.h,
                      ),
                      sizedBoxWidth(10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text20w400c252C32('Reethik thota'),
                          text16w400cA0ABBB('reethikthota@wdipl.com'),
                          text16w400cA0ABBB('Sr. Manager'),
                          text18w500c6311CB('Edit'),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40.h,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(27, 0, 164, 55),
                      border: Border.all(
                        color: const Color(0xff00A438),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xff00A438),
                          minRadius: 3,
                        ),
                        sizedBoxWidth(10.w),
                        const Text(
                          'Active',
                          style: TextStyle(
                            color: Color(0xff00A438),
                            fontSize: 14,
                            fontFamily: 'Gilroy-Regular',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              sizedBoxHeight(30.h),
              Row(
                children: [
                  text18w400c3A3472('Personal Information'),
                ],
              ),
              sizedBoxHeight(20.h),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(59, 17, 61, 157)),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text18w400c848484('Mobile number : '),
                        sizedBoxWidth(10.w),
                        text18w400cblack('+91 4578451245'),
                      ],
                    ),
                    sizedBoxHeight(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text18w400c848484('Email address : '),
                        sizedBoxWidth(10.w),
                        text18w400c3A3472('poojashah@wdipl.com'),
                      ],
                    ),
                    sizedBoxHeight(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text18w400c848484('Grade : '),
                        sizedBoxWidth(10.w),
                        text18w400c3A3472('A01'),
                      ],
                    ),
                    sizedBoxHeight(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text18w400c848484('Department : '),
                        sizedBoxWidth(10.w),
                        text18w400c3A3472('A01'),
                      ],
                    ),
                    sizedBoxHeight(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text18w400c848484('Destination : '),
                        sizedBoxWidth(10.w),
                        text18w400c3A3472('UI/UX Designer'),
                      ],
                    ),
                    sizedBoxHeight(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        text18w400c848484('Member since :  '),
                        sizedBoxWidth(10.w),
                        text18w400c3A3472('1st June, 2022'),
                      ],
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(30.h),
              Row(
                children: [
                  text18w400c3A3472('Card Information'),
                ],
              ),
              sizedBoxHeight(20.h),
              const EmployeeTabbar(),
            ],
          ),
        ),
      ),
    );
  }
}

class EmployeeTabbar extends StatefulWidget {
  const EmployeeTabbar({super.key});

  @override
  State<EmployeeTabbar> createState() => _EmployeeTabbarState();
}

class _EmployeeTabbarState extends State<EmployeeTabbar> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Column(
        children: [
          CommonTabBar(
            tabs: [
              Tab(text: 'Expense card'),
              Tab(text: 'Benefit card'),
              Tab(text: 'Gift card'),
            ],
          ),
          SizedBox(
            height: 900,
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
    );
  }
}

class Expense extends StatefulWidget {
  const Expense({
    super.key,
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
          sizedBoxHeight(20.h),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(59, 17, 61, 157),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: FlipImage(),
                    ),
                    sizedBoxWidth(20.w),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text14w400c667085('Available spend limit'),
                          text20w400cblack("₹ 50,000"),
                          const Divider(),
                          text14w400c667085('Account number'),
                          text20w400cblack("**** **** **** 5678"),
                          const Divider(),
                          text14w400c667085('Cardholder name'),
                          text20w400cblack("Kartikey Gautam"),
                          const Divider(),
                          text14w400c667085('Validity'),
                          text20w400cblack("01/12"),
                          const Divider(),
                        ],
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(30.h),
                Row(
                  children: [
                    text18w400c3A3472('Spent summary'),
                  ],
                ),
                sizedBoxHeight(10.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Stack(
                      children: [
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 0.9,
                          child: Container(
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(197, 234, 137, 201),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(5)),
                            ),
                          ),
                        ),
                        FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 0.7,
                          child: Container(
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Color(0xffEBB805),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(5)), // Food color
                            ),
                          ),
                        ),
                        FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 0.5,
                          child: Container(
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Color(0xff59C36A),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(5)),
                            ),
                          ),
                        ),
                        FractionallySizedBox(
                          alignment: Alignment.centerLeft,
                          widthFactor: 0.3,
                          child: Container(
                            height: 10,
                            decoration: const BoxDecoration(
                              color: Color(0xff6211CB), // Voucher color
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(5)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            text20w400c718EBF('Fuel'),
                            text16w400c585858('40%'),
                          ],
                        ),
                        sizedBoxHeight(5),
                        const Divider(),
                        sizedBoxHeight(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            text20w400c718EBF('Food'),
                            text16w400c585858('35%'),
                          ],
                        ),
                        sizedBoxHeight(5),
                        const Divider(),
                        sizedBoxHeight(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            text20w400c718EBF('Travel'),
                            text16w400c585858('20%'),
                          ],
                        ),
                        sizedBoxHeight(5),
                        const Divider(),
                        sizedBoxHeight(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            text20w400c718EBF('Voucher'),
                            text16w400c585858('10%'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                sizedBoxHeight(30.h),
                Row(
                  children: [
                    text18w400c3A3472('Expense wallet remaining balance'),
                  ],
                ),
                sizedBoxHeight(10.h),
                CustomButton(
                  text: 'Pull back funds',
                  ontap: () {
                    Get.toNamed(RouteName.pullbackfund2);
                  },
                ),
                sizedBoxHeight(40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/png/Food.png',
                          width: 50.w,
                          height: 50.h,
                        ),
                        sizedBoxWidth(10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text20w400c252C32('Food wallet'),
                            text18w400c4A5262('₹ 15000')
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40.h,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xff00A438),
                            minRadius: 3,
                          ),
                          sizedBoxWidth(5.w),
                          const Text(
                            'Active',
                            style: TextStyle(
                              color: Color(0xff00A438),
                              fontSize: 18,
                              fontFamily: 'Gilroy-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(8.h),
                const Divider(),
                sizedBoxHeight(8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/png/Fuel.png',
                          width: 50.w,
                          height: 50.h,
                        ),
                        sizedBoxWidth(10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text20w400c252C32('Fuel wallet'),
                            text18w400c4A5262('₹ 15000')
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40.h,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xff00A438),
                            minRadius: 3,
                          ),
                          sizedBoxWidth(5.w),
                          const Text(
                            'Active',
                            style: TextStyle(
                              color: Color(0xff00A438),
                              fontSize: 18,
                              fontFamily: 'Gilroy-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(8.h),
                const Divider(),
                sizedBoxHeight(8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/png/Telecom.png',
                          width: 50.w,
                          height: 50.h,
                        ),
                        sizedBoxWidth(10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text20w400c252C32('Telecom wallet'),
                            text18w400c4A5262('₹ 15000')
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 40.h,
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Color(0xff00A438),
                            minRadius: 3,
                          ),
                          sizedBoxWidth(5.w),
                          const Text(
                            'Active',
                            style: TextStyle(
                              color: Color(0xff00A438),
                              fontSize: 18,
                              fontFamily: 'Gilroy-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                sizedBoxHeight(8.h),
              ],
            ),
          ),
          sizedBoxHeight(20.h),
          const RecentReport(),
          sizedBoxHeight(15.h),
          const RecentTranscation(),
          sizedBoxHeight(15.h),
        ],
      ),
    );
  }
}

class RecentReport extends StatelessWidget {
  const RecentReport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(59, 17, 61, 157),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: GFAccordion(
        contentChild: Column(
          // Using contentChild instead of content
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Reportcontent(),
            sizedBoxHeight(15.h),
            const Reportcontent(),
            sizedBoxHeight(15.h),
            const Reportcontent(),
          ],
        ),
        titleChild: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/png/Depth.png',
              // width: 50,
            ),
            const SizedBox(width: 10),
            const Text(
              'Recent reports',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        collapsedTitleBackgroundColor: const Color(0xffFFFFFF),
        expandedTitleBackgroundColor: const Color(0xffFFFFFF),
        contentBackgroundColor: const Color(0xffFFFFFF),
        titleBorderRadius: BorderRadius.circular(0),
        collapsedIcon: const CircleAvatar(
          minRadius: 10,
          backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
          child: Icon(Icons.keyboard_arrow_down_outlined),
        ),
        expandedIcon: const CircleAvatar(
            minRadius: 10,
            backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
            child: Icon(Icons.keyboard_arrow_up_outlined)),
        titlePadding: const EdgeInsets.all(16.0),
        contentPadding: const EdgeInsets.all(16.0),
        showAccordion: false,
        margin: const EdgeInsets.all(0),
      ),
    );
  }
}

class RecentTranscation extends StatelessWidget {
  const RecentTranscation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(59, 17, 61, 157),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: GFAccordion(
        contentChild: Column(
          // Using contentChild instead of content
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Transcationcontent(),
            sizedBoxHeight(15.h),
            const Transcationcontent(),
            sizedBoxHeight(15.h),
            const Transcationcontent(),
          ],
        ),
        titleChild: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/png/swap_vert.png',
              // width: 50,
            ),
            const SizedBox(width: 10),
            const Text(
              'Recent transaction',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        collapsedTitleBackgroundColor: const Color(0xffFFFFFF),
        expandedTitleBackgroundColor: const Color(0xffFFFFFF),
        contentBackgroundColor: const Color(0xffFFFFFF),
        titleBorderRadius: BorderRadius.circular(0),
        collapsedIcon: const CircleAvatar(
          minRadius: 10,
          backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
          child: Icon(Icons.keyboard_arrow_down_outlined),
        ),
        expandedIcon: const CircleAvatar(
            minRadius: 10,
            backgroundColor: Color.fromRGBO(98, 17, 203, 0.178),
            child: Icon(Icons.keyboard_arrow_up_outlined)),
        titlePadding: const EdgeInsets.all(16.0),
        contentPadding: const EdgeInsets.all(16.0),
        showAccordion: false,
        margin: const EdgeInsets.all(0),
      ),
    );
  }
}

class Reportcontent extends StatelessWidget {
  const Reportcontent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xffFAF7FD),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text20w400cblack('Reimbursement Report for June 2024'),
          text14w400c667085('Last updated : 31- 02-2024 04.20 pm'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  text16w400c667085('Total expense in the report :'),
                  text18w400cblack('20'),
                ],
              ),
              InkWell(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff6311CB),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Text(
                    'View',
                    style: TextStyle(
                      color: Color(0xff6311CB),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Transcationcontent extends StatelessWidget {
  const Transcationcontent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xffFAF7FD),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text16w400cblack('Dine in'),
                  text14w400c667085('22 March 2024 - 01:12 PM'),
                ],
              ),
              text18w400cred('- ₹500'),
            ],
          ),
          sizedBoxHeight(10.h),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: const BoxDecoration(
              color: Color(0xffE8E5FF),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Text(
              'Paid from food wallet',
              style: TextStyle(
                color: Color(0xff6311CB),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlipImage extends StatefulWidget {
  const FlipImage({super.key});

  @override
  _FlipImageState createState() => _FlipImageState();
}

class _FlipImageState extends State<FlipImage> {
  bool _showFirstImage = true;

  @override
  void initState() {
    super.initState();
    // This ensures the widget is laid out before interacting
    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {
        // Now the widget is fully rendered, and state changes are safe
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showFirstImage = !_showFirstImage; // Toggle between images
        });
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        child: _showFirstImage
            ? Image.asset(
                'assets/images/png/card2.png',
                key: const ValueKey('firstImage'),
                width: 250.w,
                height: 270.h,
              )
            : Image.asset(
                'assets/images/png/card1.png',
                key: const ValueKey('secondImage'),
                width: 250.w,
                height: 270.h,
              ),
      ),
    );
  }
}
