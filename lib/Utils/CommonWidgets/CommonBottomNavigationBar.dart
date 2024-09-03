import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/MainController.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final MainController mainController;

  const CustomBottomNavigationBar({
    super.key,
    required this.mainController,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFFFFFFFF),
      showUnselectedLabels: true,
      selectedItemColor: const Color(0xff3725EA),
      unselectedItemColor: const Color(0xFF737373),
      unselectedLabelStyle: TextStyle(
        height: 3,
        fontSize: 12.sp,
        color: const Color(0xFF737373),
        fontWeight: FontWeight.w400,
        fontFamily: 'Gilroy-Medium',
      ),
      selectedLabelStyle: TextStyle(
        height: 3,
        fontSize: 12.sp,
        color: const Color(0xFF3725EA),
        fontWeight: FontWeight.w400,
        fontFamily: 'Gilroy-Medium',
      ),
      currentIndex: mainController.selectedIndex.value,
      onTap: (index) {
        mainController.updateTab(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/png/dashboard.png',
            height: 30.h,
            width: 30.w,
          ),
          activeIcon: _buildActiveIcon(
            isSelected: mainController.selectedIndex.value == 0,
            assetPath: "assets/images/png/active_dashboard.png",
          ),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/png/employee.png',
            height: 30.h,
            width: 30.w,
          ),
          activeIcon: _buildActiveIcon(
            isSelected: mainController.selectedIndex.value == 1,
            assetPath: "assets/images/png/active_employee.png",
          ),
          label: 'Employee',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/png/request.png',
            height: 30.h,
            width: 30.w,
          ),
          activeIcon: _buildActiveIcon(
            isSelected: mainController.selectedIndex.value == 2,
            assetPath: "assets/images/png/active_request.png",
          ),
          label: 'Request',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/png/gift.png',
            height: 30.h,
            width: 30.w,
          ),
          activeIcon: _buildActiveIcon(
            isSelected: mainController.selectedIndex.value == 3,
            assetPath: "assets/images/png/active_gift.png",
          ),
          label: 'Gift & Voucher',
        ),
      ],
    );
  }

  Widget _buildActiveIcon(
      {required bool isSelected, required String assetPath}) {
    return Column(
      children: [
        if (isSelected)
          Center(
            child: Image.asset(
              fit: BoxFit.contain,
              assetPath,
              height: 30.h,
              width: 30.w,
            ),
          ),
      ],
    );
  }
}
