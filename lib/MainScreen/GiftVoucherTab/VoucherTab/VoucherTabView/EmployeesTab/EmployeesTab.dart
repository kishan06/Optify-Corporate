import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/CommonWidgets/sized_box.dart';
import '../../../DigitalTab/CommonWidgets/CustomAccordionOfDigitalTabView.dart';

class Employeestab extends StatelessWidget {
  Employeestab({super.key});

  // Create a list of employee data
  final List<EmployeesData> employees = [
    EmployeesData(
        employeesName: 'Reethik thota',
        employeesId: 'WD-0956',
        employeesDepartment: 'Design',
        employeesMobileNumber: '+91 4578454121',
        employeesMemberSince: '3 Jan, 2022',
        employeesEmailAddress: 'reethik@wdipl.com',
        employeesImage: 'assets/images/png/Avatar.png'),
    EmployeesData(
        employeesName: 'Reethik thota',
        employeesId: 'WD-0956',
        employeesDepartment: 'Design',
        employeesMobileNumber: '+91 4578454121',
        employeesMemberSince: '3 Jan, 2022',
        employeesEmailAddress: 'reethik@wdipl.com',
        employeesImage: 'assets/images/png/Avatar.png'),
    EmployeesData(
        employeesName: 'Reethik thota',
        employeesId: 'WD-0956',
        employeesDepartment: 'Design',
        employeesMobileNumber: '+91 4578454121',
        employeesMemberSince: '3 Jan, 2022',
        employeesEmailAddress: 'reethik@wdipl.com',
        employeesImage: 'assets/images/png/Avatar.png'),
    // Add more EmployeesData entries here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: employees.map((data) {
            return Column(
              children: [
                sizedBoxHeight(16.h),
                Customaccordionofdigitaltabview(
                  employeesName: data.employeesName,
                  employeesId: data.employeesId,
                  employeesDepartment: data.employeesDepartment,
                  employeesMobileNumber: data.employeesMobileNumber,
                  employeesMemberSince: data.employeesMemberSince,
                  employeesEmailAddress: data.employeesEmailAddress,
                  employeesImage: data.employeesImage,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(
                  color: Color(0xffECECEC),
                ),)
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class EmployeesData {
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
