import 'package:Optifii_Corporate/MainScreen/RequestTab/ApprovedTab/ApprovedReportView/ApprovedReportView.dart';
import 'package:Optifii_Corporate/MainScreen/RequestTab/RejectedTab/RejectedReportView/RejectReportView.dart';
import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/HelpAndSupport.dart';
import 'package:Optifii_Corporate/SideBar/ManageDepartment_Role/AddDepartment.dart';
import 'package:Optifii_Corporate/SideBar/ManageDepartment_Role/AddRole.dart';
import 'package:Optifii_Corporate/SideBar/ManageDepartment_Role/EditRole.dart';
import 'package:Optifii_Corporate/SideBar/ManageDepartment_Role/ManageDepartment_Role.dart';
import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/DigitalTab/DigitalTabView/DigitalTabView.dart';
import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/VoucherTab/VoucherTabView/VoucherTabView.dart';
import 'package:Optifii_Corporate/MainScreen/RequestTab/ReimburseTab/ReportPage/ReportPage.dart';
import 'package:Optifii_Corporate/SideBar/Wallets/ViewReport.dart';
import 'package:Optifii_Corporate/SideBar/Wallets/ViewWallets.dart';
import 'package:Optifii_Corporate/SideBar/Wallets/Wallets.dart';
import 'package:get/get.dart';
import 'package:Optifii_Corporate/MainScreen/DashboardTab/Dashboard.dart';
import 'package:Optifii_Corporate/MainScreen/EmployeeTab/Employee.dart';
import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/DigitalTab/DigitalTabView/DigitalTabView.dart';
import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/GiftVoucher.dart';
import 'package:Optifii_Corporate/MainScreen/Notification.dart';
import 'package:Optifii_Corporate/MainScreen/RequestTab/Request.dart';
import 'package:Optifii_Corporate/MainScreen/Statement.dart';
import 'package:Optifii_Corporate/Onboarding/LoginScreen.dart';
import 'package:Optifii_Corporate/Onboarding/OTPScreen.dart';
import 'package:Optifii_Corporate/Onboarding/SplashScreen.dart';
import 'package:Optifii_Corporate/SideBar/ManageApprover/AddApprover.dart';
import 'package:Optifii_Corporate/SideBar/ManageApprover/ApproverDetails.dart';
import 'package:Optifii_Corporate/SideBar/ManageApprover/EditApprover.dart';
import 'package:Optifii_Corporate/SideBar/ManageApprover/ManageApprover.dart';
import 'package:Optifii_Corporate/SideBar/ManageDepartment_Role/AddDepartment.dart';
import 'package:Optifii_Corporate/SideBar/ManageDepartment_Role/AddRole.dart';
import 'package:Optifii_Corporate/SideBar/ManageDepartment_Role/EditRole.dart';
import 'package:Optifii_Corporate/SideBar/ManageDepartment_Role/ManageDepartment_Role.dart';
import 'package:Optifii_Corporate/SideBar/Profile/EditProfile.dart';
import 'package:Optifii_Corporate/SideBar/Profile/Profile.dart';
import 'package:Optifii_Corporate/SideBar/Wallets/ViewReport.dart';
import 'package:Optifii_Corporate/SideBar/Wallets/ViewWallets.dart';
import 'package:Optifii_Corporate/SideBar/Wallets/Wallets.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/MainScreen.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? appRoutes() =>
      [
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
          page: () => const MainScreen(),
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
        GetPage(
            name: RouteName.reportpage,
            page: () => const Reportpage()),
        GetPage(
            name: RouteName.approvedreportview,
            page: () => const Approvedreportview()),
        GetPage(
            name: RouteName.rejectreportview,
            page: () => const RejectReportView()),
        // Request Pages


        // GiftVoucher Pages
        GetPage(
          name: RouteName.giftvoucherpage,
          page: () => const GiftVoucherPage(),
        ),
        GetPage(
            name: RouteName.digitalTabView,
            page: () => const Digitaltabview()),
        GetPage(
            name: RouteName.VoucherTabView,
            page: () => const Vouchertabview()),
        // GiftVoucher Pages


        // Sidebar
        GetPage(
          name: RouteName.profile,
          page: () => const ProfilePage(),
        ),
        GetPage(
          name: RouteName.editprofile,
          page: () => const EditProfile(),
        ),
        GetPage(
          name: RouteName.manageapprover,
          page: () => const MangeApprove(),
        ),
        GetPage(
          name: RouteName.addapprover,
          page: () => const AddApprovers(),
        ),
        GetPage(
          name: RouteName.approverdetails,
          page: () => const ApproverDetails(),
        ),
        GetPage(
          name: RouteName.editdetails,
          page: () => const EditDetails(),
        ),
        GetPage(
          name: RouteName.wallets,
          page: () => const Wallets(),
        ),
        GetPage(
          name: RouteName.viewwallets,
          page: () => const ViewWallets(),
        ),
        GetPage(
          name: RouteName.viewreport,
          page: () => const ViewReport(),
        ),
        GetPage(
          name: RouteName.managedepartment_role,
          page: () => const Department_Role(),
        ),
        GetPage(
          name: RouteName.addDepartment,
          page: () => const AddDepartment(),
        ),
        GetPage(
          name: RouteName.addrole,
          page: () => const AddRole(),
        ),
        GetPage(
          name: RouteName.editrole,
          page: () => const EditRole(),
        ),
        GetPage(
            name: RouteName.helpandsupport,
            page:  ()=> const HelpAndSupport()),
        // Sidebar
        GetPage(
          name: RouteName.notification,
          page: () => const Notifications(),
        ),
        GetPage(
          name: RouteName.statement,
          page: () => const ViewStatement(),
        ),
      ];
}
