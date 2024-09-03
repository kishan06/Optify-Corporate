import 'package:get/get.dart';
import 'package:optifii_Corporate/MainScreen/DashboardTab/Dashboard.dart';
import 'package:optifii_Corporate/MainScreen/EmployeeTab/Employee.dart';
import 'package:optifii_Corporate/MainScreen/GiftVoucherTab/GiftVoucher.dart';
import 'package:optifii_Corporate/MainScreen/RequestTab/Request.dart';
import 'package:optifii_Corporate/Onboarding/LoginScreen.dart';
import 'package:optifii_Corporate/Onboarding/OTPScreen.dart';
import 'package:optifii_Corporate/Onboarding/SplashScreen.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/MainController.dart';
import 'package:optifii_Corporate/Utils/CommonWidgets/MainScreen.dart';
import 'package:optifii_Corporate/routes/route_name.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? appRoutes() => [
        // Onboarding
        GetPage(
          name: RouteName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RouteName.loginScreen,
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: RouteName.otpScreen,
          page: () => const OTPScreen(),
        ),
        // Onboarding
        // mainscreen
        GetPage(
          name: RouteName.mainscreen,
          page: () => MainScreen(),
        ),
        // Dashboard Pages
        GetPage(
          name: RouteName.dashboardpage,
          page: () => const DashboardPage(),
        ),
        // Dashboard Pages
        // Employee Pages
        GetPage(
          name: RouteName.employeepage,
          page: () => const EmployeePage(),
        ),
        // Employee Pages
        // Request Pages
        GetPage(
          name: RouteName.requestpage,
          page: () => const RequestPage(),
        ),
        // Request Pages
        // GiftVoucher Pages
        GetPage(
          name: RouteName.giftvoucherpage,
          page: () => const GiftVoucherPage(),
        ),
        // GiftVoucher Pages
      ];
}
