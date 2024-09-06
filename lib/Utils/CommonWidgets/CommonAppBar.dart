// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(height);

  const CommonAppbar(
      {super.key,
      required this.titleTxt,
      this.showLeading = true,
      this.customActionWidget,
      this.onCustomActionPressed,
      this.showEdit = false,
      this.customBack = false,
      this.editPageName,
      this.height = 80,
      this.customRouteName});

  final String titleTxt;
  final bool? showLeading;
  final Widget? customActionWidget;
  final VoidCallback? onCustomActionPressed;
  final bool? showEdit;
  final bool customBack;
  final String? editPageName;
  final double height;
  final String? customRouteName;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0.0,
        backgroundColor: const Color(0xFFffffff),
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 1,
        title: showLeading!
            ? Padding(
                padding: EdgeInsets.only(right: 16.w, top: 10.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          titleTxt,
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
                    ],
                  ),
                ),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                        titleTxt,
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
                  ],
                ),
              ),
        leading: showLeading!
            ? Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: InkWell(
                    onTap: () {
                      if (customBack) {
                        Get.back(result: true);
                      } else {
                        Get.back();
                      }
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
              )
            : null,
        actions: [
          if (customActionWidget != null)
            InkWell(
              onTap: onCustomActionPressed,
              child: Padding(
                padding: EdgeInsets.only(right: 14.w),
                child: customActionWidget,
              ),
            ),
        ],
      ),
    );
  }
}
