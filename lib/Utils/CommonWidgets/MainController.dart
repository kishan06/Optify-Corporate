import 'package:get/get.dart';
import 'package:optifii_Corporate/MainScreen/DashboardTab/Dashboard.dart';
import 'package:optifii_Corporate/MainScreen/EmployeeTab/Employee.dart';
import 'package:optifii_Corporate/MainScreen/GiftVoucherTab/GiftVoucher.dart';
import 'package:optifii_Corporate/MainScreen/RequestTab/Request.dart';

class MainController extends GetxController {
  var selectedIndex = 0.obs;

  var currentTab = [
    const DashboardPage(),
    const EmployeePage(),
    const RequestPage(),
    const GiftVoucherPage(),
  ].obs;

  void updateTab(int index) {
    selectedIndex.value = index;
  }
}
