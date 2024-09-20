import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/DigitalTab/CommonWidgets/StatusContainer.dart';
import 'package:Optifii_Corporate/MainScreen/GiftVoucherTab/DigitalTab/CommonWidgets/CustomAccordionOfDigitalTabView.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Digitaltabview extends StatefulWidget {
  const Digitaltabview({super.key});

  @override
  State<Digitaltabview> createState() => _DigitaltabviewState();
}

class _DigitaltabviewState extends State<Digitaltabview> {

  // Method to get status colors based on the status
  Map<String, dynamic> getStatusColors(String status) {
    switch (status) {
      case 'Received':
        return {
          'backgroundColor': const Color.fromRGBO(0, 164, 56, 0.08),
          'borderColor': const Color(0xff00A438),
          'textColor': Colors.green,
          'circleColor': Colors.green,
        };
      case 'Pending':
        return {
          'backgroundColor': Colors.orange.withOpacity(0.1),
          'borderColor': Colors.orange,
          'textColor': Colors.orange,
          'circleColor': Colors.orange,
        };
      case 'Cancelled':
        return {
          'backgroundColor': Colors.red.withOpacity(0.1),
          'borderColor': Colors.red,
          'textColor': Colors.red,
          'circleColor': Colors.red,
        };
      case 'Dispatch':
        return {
          'backgroundColor': const Color.fromRGBO(223, 93, 23, 0.08),
          'borderColor': const Color(0xffDF5F17),
          'textColor': const Color(0xffDF5F17),
          'circleColor': const Color(0xffDF5F17),
        };

      case 'Order accepted':
        return {
          'backgroundColor': const Color.fromRGBO(55, 37, 234, 0.03),
          'borderColor': const Color(0xff3725EA),
          'textColor': const Color(0xff3725EA),
          'circleColor': const Color(0xff3725EA),
        };
      default:
        return {
          'backgroundColor': Colors.grey.withOpacity(0.1),
          'borderColor': Colors.grey,
          'textColor': Colors.grey,
          'circleColor': Colors.grey,
        };
    }
  }

  // Create a list of order data
  final List<EmployeesData> employees = [
    EmployeesData(
      employeesName: 'Reethik thota',
      employeesId: 'WD-0956',
      employeesDepartment: 'Design',
      employeesMobileNumber: '+91 4578454121',
      employeesMemberSince: '3 Jan, 2022',
      employeesEmailAddress: 'reethik@wdipl.com',
        employeesImage: 'assets/images/png/Avatar.png'
    ),  EmployeesData(
      employeesName: 'Reethik thota',
      employeesId: 'WD-0956',
      employeesDepartment: 'Design',
      employeesMobileNumber: '+91 4578454121',
      employeesMemberSince: '3 Jan, 2022',
      employeesEmailAddress: 'reethik@wdipl.com',
        employeesImage: 'assets/images/png/Avatar.png'
    ),  EmployeesData(
      employeesName: 'Reethik thota',
      employeesId: 'WD-0956',
      employeesDepartment: 'Design',
      employeesMobileNumber: '+91 4578454121',
      employeesMemberSince: '3 Jan, 2022',
      employeesEmailAddress: 'reethik@wdipl.com',
        employeesImage: 'assets/images/png/Avatar.png'
    ),  EmployeesData(
      employeesName: 'Reethik thota',
      employeesId: 'WD-0956',
      employeesDepartment: 'Design',
      employeesMobileNumber: '+91 4578454121',
      employeesMemberSince: '3 Jan, 2022',
      employeesEmailAddress: 'reethik@wdipl.com',
        employeesImage: 'assets/images/png/Avatar.png'
    ),  EmployeesData(
      employeesName: 'Reethik thota',
      employeesId: 'WD-0956',
      employeesDepartment: 'Design',
      employeesMobileNumber: '+91 4578454121',
      employeesMemberSince: '3 Jan, 2022',
      employeesEmailAddress: 'reethik@wdipl.com',
        employeesImage: 'assets/images/png/Avatar.png'
    ),
  ];



  @override
  Widget build(BuildContext context) {



    var statusColors = getStatusColors('Received');

    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: CommonAppbar(titleTxt: 'Gift card & voucher'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text25w500c3725EA('#47954524'),
                      text20w400cA0ABBB('Order ID'),
                    ],
                  ),
                  StatusContainer(
                    status: 'Received',
                    backgroundColor: statusColors['backgroundColor'],
                    borderColor: statusColors['borderColor'],
                    textColor: statusColors['textColor'],
                    circleColor: statusColors['circleColor'],
                  ),
                ],
              ),
            ),
            sizedBoxHeight(25.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Divider(
                color: Color.fromRGBO(99, 17, 203, 0.2),
              ),
            ),
            sizedBoxHeight(17.h),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: text18w400c0B0B0B('Employees'),
            ),
            sizedBoxHeight(17.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: employees.map((data) {
                    return Column(
                      children: [
                       Customaccordionofdigitaltabview(
                           employeesName: data.employeesName,
                           employeesId: data.employeesId,
                           employeesDepartment: data.employeesDepartment,
                           employeesMobileNumber: data.employeesMobileNumber,
                           employeesMemberSince: data.employeesMemberSince,
                           employeesEmailAddress: data.employeesEmailAddress,
                           employeesImage: data.employeesImage),
                        sizedBoxHeight(4.h),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            color: Color(0xffECECEC),
                          ),)
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),







          ],
        ));
  }
}


class EmployeesData  {
  final String employeesName;
  final String employeesId;
  final String employeesDepartment;
  final String employeesMobileNumber;
  final String employeesMemberSince;
  final String employeesEmailAddress;
  final String employeesImage;

  EmployeesData({
    required this.employeesName,
    required this.employeesId,
    required this.employeesDepartment,
    required this.employeesMobileNumber,
    required this.employeesMemberSince,
    required this.employeesEmailAddress,
    required this.employeesImage,
  });
}
