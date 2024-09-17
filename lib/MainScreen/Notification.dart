import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonCard.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(titleTxt: 'Notifications'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  text18w400c848484('Today'),
                ],
              ),
              sizedBoxHeight(15.h),
              const Notify(),
              sizedBoxHeight(20.h),
              const Notify(),
              sizedBoxHeight(20.h),
              const Notify(),
              sizedBoxHeight(20.h),
            ],
          ),
        ),
      ),
    );
  }
}

class Notify extends StatelessWidget {
  const Notify({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Circle Image
          Image.asset(
            'assets/images/png/circle.png',
            width: 40.w,
            height: 40.h,
          ),
          sizedBoxWidth(10.w),
          // Column with Text Content
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align content to start
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur sit amet, consectetur sit amet, consectetur  ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    // Time Text
                    text16w400c585858('10.38 AM'),
                  ],
                ),
                sizedBoxHeight(5.h),
                const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff585858),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
