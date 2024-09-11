
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeeAvatars extends StatelessWidget {
  final int count;
  final int extraCount;
  final String avatarImage;

  const EmployeeAvatars({
    Key? key,
    required this.count,
    required this.extraCount,
    required this.avatarImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.h,
      width: 124.w,
      child: Stack(
        children: [
          for (int i = 0; i < count; i++)
            Positioned(
              left: i * 15.0,
              child: Container(
                height: 24.h,
                width: 24.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(avatarImage),
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5.w, color: Color(0xffffffff)),
                ),
              ),
            ),
          if (extraCount > 0)
            Positioned(
              left: count * 15.0,
              child: Container(
                height: 24.h,
                width: 40.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffF9F5FF),
                  border: Border.all(width: 2.w, color: Color(0xffffffff)),
                ),
                child: Center(
                  child: text12w500c7F56D9('+$extraCount'),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
