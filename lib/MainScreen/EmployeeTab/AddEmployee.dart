import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTextFormField.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:remove_emoji_input_formatter/remove_emoji_input_formatter.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({super.key});

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  final List<String> _departments = [
    'Select department',
    'Finance',
    'HR',
    'IT',
    'Marketing',
    'Sales'
  ];
  String _selectedDepartment = 'Select department';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(
        titleTxt: 'Add employee',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text20w400cblack('Name'),
              CustomTextFormField(
                texttype: TextInputType.text,
                inputFormatters: [
                  RemoveEmojiInputFormatter(),
                ],
                onInput: (value) {},
                hintText: "Enter employee name",
              ),
              sizedBoxHeight(20.h),
              text20w400cblack('Email ID'),
              CustomTextFormField(
                texttype: TextInputType.emailAddress,
                inputFormatters: [
                  RemoveEmojiInputFormatter(),
                ],
                onInput: (value) {},
                hintText: "Enter email",
              ),
              sizedBoxHeight(20.h),
              text20w400cblack('Mobile number'),
              CustomTextFormField(
                texttype: TextInputType.phone,
                inputFormatters: [
                  RemoveEmojiInputFormatter(),
                ],
                onInput: (value) {},
                hintText: "Enter mobile number",
              ),
              sizedBoxHeight(20.h),
              text20w400cblack('Employee code'),
              CustomTextFormField(
                readonly: true,
                texttype: TextInputType.phone,
                inputFormatters: [
                  RemoveEmojiInputFormatter(),
                ],
                onInput: (value) {},
                hintText: "WD-9799",
              ),
              sizedBoxHeight(20.h),
              text20w400cblack('Select department'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFDFDEDE),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: DropdownButton<String>(
                  value: _selectedDepartment, // Currently selected item
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedDepartment = newValue!;
                    });
                  },
                  items: _departments
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  underline: Container(
                    height: 2,
                    color: Colors.transparent,
                  ),
                ),
              ),
              sizedBoxHeight(20.h),
              text20w400cblack('Designation'),
              CustomTextFormField(
                texttype: TextInputType.text,
                inputFormatters: [
                  RemoveEmojiInputFormatter(),
                ],
                onInput: (value) {},
                hintText: "Enter designation",
              ),
              sizedBoxHeight(60.h),
              CustomButton(
                text: 'Add employee',
                ontap: () {
                  Get.toNamed(RouteName.employeedetails);
                },
              ),
              sizedBoxHeight(40.h),
            ],
          ),
        ),
      ),
    );
  }
}
