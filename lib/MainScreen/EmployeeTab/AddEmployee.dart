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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final List<String> _departments = [
    'Enter department',
    'Finance',
    'HR',
    'IT',
    'Marketing',
    'Sales'
  ];
  String _selectedDepartment = 'Enter department';

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _designationController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    _designationController.dispose();
    super.dispose();
  }

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
          child: Form(
            key: _formKey, // Form key for validation
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text20w400cblack('Name'),
                CustomTextFormField(
                  texttype: TextInputType.text,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  controller: _nameController,
                  hintText: "Enter employee name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter employee name";
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(20.h),
                text20w400cblack('Email ID'),
                CustomTextFormField(
                  texttype: TextInputType.emailAddress,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  controller: _emailController,
                  hintText: "Enter email",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter email";
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                        .hasMatch(value)) {
                      return "Please enter a valid email address";
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(20.h),
                text20w400cblack('Mobile number'),
                CustomTextFormField(
                  texttype: TextInputType.phone,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  controller: _mobileController,
                  hintText: "Enter mobile number",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter mobile number";
                    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                      return "Please enter a valid 10-digit mobile number";
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(20.h),
                text20w400cblack('Employee code'),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 13
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(99, 17, 203, 0.1)
                  ),
                  child: Text('WD-9799',
                  style: TextStyle(
                    fontFamily: 'TT Commons',
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                    color: Color(0xff404040)
                  ),
                  ),
                ),



                // CustomTextFormField(
                //   readonly: true,
                //   texttype: TextInputType.phone,
                //   hintText: "WD-9799", 
                  
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return "Employee code is required";
                //     }
                //     return null;
                //   },
                // ),
                sizedBoxHeight(20.h),
                text20w400cblack('Select department'),
                DropdownButtonFormField<String>(
                  value: _selectedDepartment, // Currently selected item
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedDepartment = newValue!;
                    });
                  },
                  validator: (value) {
                    if (value == 'Enter department') {
                      return "Please select a department";
                    }
                    return null;
                  },
                  items: _departments
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style: TextStyle(
                        fontFamily: 'TT Commons',
                        fontSize: 18.sp,
                        color: Color(0xffCDCDCD)
                      ),),
                    );
                  }).toList(),
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Color(0xffCDCDCD),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Color(0xff6211CB),
                        width: 2,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
                sizedBoxHeight(20.h),
                text20w400cblack('Designation'),
                CustomTextFormField(
                  texttype: TextInputType.text,
                  inputFormatters: [
                    RemoveEmojiInputFormatter(),
                  ],
                  controller: _designationController,
                  hintText: "Enter designation",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter designation";
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(60.h),
                CustomButton(
                  text: 'Add employee',
                  ontap: () {
                    if (_formKey.currentState!.validate()) {
                      Get.toNamed(RouteName.employeedetails);
                    }
                  },
                ),
                sizedBoxHeight(40.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
