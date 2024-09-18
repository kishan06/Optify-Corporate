import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Reportpage extends StatefulWidget {
  const Reportpage({super.key});

  @override
  State<Reportpage> createState() => _ReportpageState();
}

class _ReportpageState extends State<Reportpage> {
  List<BillItem> billItems = [
    BillItem(
        date: 'July 18',
        title: 'Burger Shack',
        price: 450,
        imagePath: 'assets/images/png/image 50.png'),
    BillItem(
        date: 'July 18',
        title: 'Burger Shack',
        price: 450,
        imagePath: 'assets/images/png/image 50.png'),
    BillItem(
        date: 'July 18',
        title: 'Burger Shack',
        price: 450,
        imagePath: 'assets/images/png/image 50.png'),
    BillItem(
        date: 'July 18',
        title: 'Burger Shack',
        price: 450,
        imagePath: 'assets/images/png/image 50.png'),
  ];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: CommonAppbar(titleTxt: 'Report for June 2024'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Approve Button
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Get.to(ApproveDialogBox());
                    },
                    child: Container(
                      height: 45.h,
                      margin: EdgeInsets.only(right: 10.w),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 164, 56, 1),
                        borderRadius: BorderRadius.circular(5.44.r),
                        border: Border.all(
                          width: 0.75.w,
                          color: const Color(0xff00A438),
                        ),
                      ),
                      child: Center(
                        child: text14w400cffffff('Approve'),
                      ),
                    ),
                  ),
                ),
                // Reject Button
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Get.to(RejectDialogBox());
                    },
                    child: Container(
                      height: 45.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.44.r),
                        border: Border.all(
                          width: 0.75.w,
                          color: const Color(0xffEE1B24),
                        ),
                      ),
                      child: Center(
                        child: text14w400cEE1B24('Reject'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            sizedBoxHeight(40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 52.h,
                      width: 52.w,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('assets/images/png/Avatar.png'),
                    ),
                    sizedBoxWidth(8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text20w400c252C32('Reethik Thota'),
                        text16w400cA0ABBB('WD-0956'),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    text16w400cA0ABBB('Report number'),
                    text20w400c252C32('#124510'),
                  ],
                ),
              ],
            ),
            sizedBoxHeight(18.h),
            const DottedLine(
              direction: Axis.horizontal,
              dashColor: Color.fromRGBO(55, 37, 234, 0.17),
            ),
            sizedBoxHeight(18.h),
            text20w400c252C32('Expenses in this report'),
            sizedBoxHeight(18.h),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.43,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: billItems.length,
                    itemBuilder: (context, index) {
                      final item = billItems[index];
                      return Padding(
                        padding: EdgeInsets.only(bottom: 16.h),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  // Allows tapping outside to close
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Color.fromRGBO(
                                          0, 0, 0, 0.73), // Dark background
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: Image.asset(
                                              item.imagePath,
                                              fit: BoxFit.contain,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.8,
                                              // Adjust height
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8, // Adjust width
                                            ),
                                          ),
                                          Positioned(
                                            top: 100.h,
                                            right: 25.w,
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Icon(
                                                Icons.close,
                                                size: 34.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    activeColor: const Color(0xff6311CB),
                                    checkColor: const Color(0xffffffff),
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        isChecked = newValue ?? false;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 14.w),
                                  Container(
                                    height: 91.h,
                                    width: 88.w,
                                    padding:
                                        EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9.r),
                                      color: const Color.fromRGBO(
                                          55, 37, 234, 0.13),
                                    ),
                                    child: Center(
                                      child: Image.asset(item.imagePath),
                                    ),
                                  ),
                                  SizedBox(width: 11.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.date,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFFA0ABBB),
                                        ),
                                      ),
                                      Text(
                                        item.title,
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xFF606060),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '₹ ${item.price.toString()}',
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xFF252C32),
                                            ),
                                          ),
                                          SizedBox(width: 4.w),
                                          SizedBox(
                                            height: 20.h,
                                            width: 23.w,
                                            child: Image.asset(
                                                'assets/images/png/Black.png'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 18.h),
                            const DottedLine(
                              direction: Axis.horizontal,
                              dashColor: Color.fromRGBO(55, 37, 234, 0.17),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            sizedBoxHeight(4.h),
            Row(
              children: [
                text16w400c667085('Total reimburse amount'),
                sizedBoxWidth(15.w),
                text16w400c667085('₹ 50,000'),
              ],
            ),
            sizedBoxHeight(13.h),
            Row(
              children: [
                text16w400c667085('Non reimbursable amount'),
                sizedBoxWidth(15.w),
                text16w400c667085('₹ 10,000'),
              ],
            ),
            sizedBoxHeight(13.h),
            const DottedLine(
              direction: Axis.horizontal,
              dashColor: Color.fromRGBO(55, 37, 234, 0.17),
            ),
            sizedBoxHeight(10.h),
            Row(
              children: [
                text18w400c4A5262('Total report amount'),
                sizedBoxWidth(15.w),
                text16w400c667085('₹ 40,000'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BillItem {
  final String date;
  final String title;
  final double price;
  final String imagePath;

  BillItem(
      {required this.date,
      required this.title,
      required this.price,
      required this.imagePath});
}

ApproveDialogBox() {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.transparent,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Container(
              width: double.infinity,
             height: MediaQuery.of(context).size.height * 0.4,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Approved icon
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 49.43.h,
                        width: 49.43.w,
                        child: Image.asset('assets/images/png/approved icon.png'),
                      ),

                      SizedBox(height: 8.h),

                      text22w400c101828('Are you sure you want to approve request?'),

                      SizedBox(height: 8.h), // Adjust space based on screen height

                      text16w400c667085('Lorem ipsum dolor sit amet, consectetur adipiscing elit. consectetur adipi'),
                    ],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Flexible(
                        child: InkWell(
                          onTap: (){
                            Get.back();
                          },
                          child: Container(
                            height: 49.59.h,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xffF0F0F0),
                            ),
                            child: Center(child: text18w500c344054('No, I don’t')),
                          ),
                        ),
                      ),

                      sizedBoxWidth(12.w),

                      // Yes button
                      Flexible(
                        child: Container(
                          height: 45.59.h, // Button height as 6% of screen height
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.primary,
                          ),
                          child: Center(child: text18w500cffffff('Yes, approve')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
    barrierDismissible: false, // Prevent dismissing by tapping outside
  );
}


RejectDialogBox() {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.transparent,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Approved icon and title
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 49.43.h,
                        width: 49.43.w,
                        child: Image.asset('assets/images/png/refuse icon.png'),
                      ),
                      SizedBox(height: 20.h),
                      text22w400c101828('Reason for rejecting request'),
                    ],
                  ),

                  // TextField with a fixed height of 121px (approximately 121.0)
                  SizedBox(
                    height: 121.0, // Fixed height
                    child: TextField(
                      maxLines: null, // Allow for multiline input
                      expands: true,  // Expands to fill the parent size
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.3),
                        ),
                        contentPadding: EdgeInsets.all(12), // Adjust padding if needed
                      ),
                    ),
                  ),

                  // Submit button with full width and height 45
                  SizedBox(
                    width: double.infinity,
                    height: 45.59.h, // Set the height to 45
                    child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: text18w500cffffff('Submit'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary, // Replace with your primary color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
    barrierDismissible: false, // Prevent dismissing by tapping outside
  );
}


