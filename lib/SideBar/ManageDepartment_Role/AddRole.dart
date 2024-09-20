import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTextFormField.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddRole extends StatefulWidget {
  const AddRole({super.key});

  @override
  State<AddRole> createState() => _AddRoleState();
}

class _AddRoleState extends State<AddRole> {
  bool isAdvanceAccessVisible = false;
  bool isGiveAccess = true;

  final List<String> _departments = [
    'Select department',
    'Finance',
    'HR',
    'IT',
    'Marketing',
    'Sales'
  ];
  String _selectedDepartment = 'Select department';

  final List<String> _grade = ['Select grade', 'A', 'B', 'C', 'D', 'E'];
  final String _selectedGrade = 'Select grade';

  bool expense = false;
  bool benefit = false;
  bool withdraw = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(titleTxt: 'Add role'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text20w400cblack('Add role'),
              const CustomTextFormField(
                hintText: 'Enter role',
              ),
              SizedBox(height: 20.h),
              text20w400cblack('Add department'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFDFDEDE),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
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
              SizedBox(height: 20.h),
              text20w400cblack('Grade/level'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFDFDEDE),
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
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
              SizedBox(height: 20.h),
              text18w400cblack(
                  'Will this role be an Wallet Approver as well? If yes select category.'),
              sizedBoxHeight(10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: expense,
                        onChanged: (bool? value) {
                          setState(() {
                            expense = value ??
                                false; // Update state when checkbox is toggled
                          });
                        },
                      ),
                      text18w400c848484('Expense wallet approver')
                    ],
                  ),
                  sizedBoxHeight(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: benefit,
                        onChanged: (bool? value) {
                          setState(() {
                            benefit = value ??
                                false; // Update state when checkbox is toggled
                          });
                        },
                      ),
                      text18w400c848484('Benefit wallet approver')
                    ],
                  ),
                  sizedBoxHeight(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: withdraw,
                        onChanged: (bool? value) {
                          setState(() {
                            withdraw = value ??
                                false; // Update state when checkbox is toggled
                          });
                        },
                      ),
                      text18w400c848484('Withdraw funds approver')
                    ],
                  ),
                ],
              ),
              sizedBoxHeight(20),
              Visibility(
                visible: isGiveAccess,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      height: 150.h,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(122, 196, 188, 206),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.settings,
                            color: Color(0xff6211CB),
                          ),
                          sizedBoxWidth(10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text16w400c344054('Advance accesss'),
                                sizedBoxHeight(10),
                                Expanded(
                                  child: text16w400c585858(
                                      'Enable this to provide Corporate dashboard access to this role.'),
                                ),
                                SizedBox(
                                  width: 150.w,
                                  height: 40.h,
                                  child: CustomButton(
                                    text: 'Give Access',
                                    ontap: () {
                                      accesswidget();
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              sizedBoxHeight(20),
              Visibility(
                visible: isAdvanceAccessVisible,
                child: Column(
                  children: [
                    Row(
                      children: [
                        text18w400c3A3472('Advance access'),
                      ],
                    ),
                    sizedBoxHeight(20.h),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              color: Color(0xffF9FAFB),
                            ),
                            child: text20w400c3725EA("Manage human resource"),
                          ),
                          sizedBoxHeight(20.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Dashboard'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Manage Human Resources'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('OptiFii Expense'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('OptiFii Benefit'),
                          ),
                          const MultipleCheckboxGroups(),
                          sizedBoxHeight(30.h),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              color: Color(0xffF9FAFB),
                            ),
                            child: text20w400c3725EA("Expense Management"),
                          ),
                          sizedBoxHeight(20.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Dashboard'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Card program'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Wallet program'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10.h),
                          sizedBoxHeight(30.h),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              color: Color(0xffF9FAFB),
                            ),
                            child: text20w400c3725EA("Benefit Management"),
                          ),
                          sizedBoxHeight(20.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Dashboard'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Card program'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Wallet program'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10.h),
                          sizedBoxHeight(30.h),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              color: Color(0xffF9FAFB),
                            ),
                            child: text20w400c3725EA("Gifting Management"),
                          ),
                          sizedBoxHeight(20.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Dashboard'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('My voucher'),
                          ),
                          const MultipleCheckboxGroups(),
                          sizedBoxHeight(10.h),
                          sizedBoxHeight(30.h),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            decoration: const BoxDecoration(
                              color: Color(0xffF9FAFB),
                            ),
                            child: text20w400c3725EA("Setting"),
                          ),
                          sizedBoxHeight(20.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Setting'),
                          ),
                          const MultipleCheckboxGroups(),
                          const Divider(),
                          sizedBoxHeight(10.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: text18w400c3A3472('Support & tickets'),
                          ),
                          const MultipleCheckboxGroups(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight(20),
              sizedBoxHeight(50.h),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40.h,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff6311CB),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: const Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff6311CB),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxWidth(15.h),
                  Expanded(
                    flex: 1,
                    child: CustomButton(
                      text: 'Save & proceed',
                      ontap: () {},
                    ),
                  ),
                ],
              ),
              sizedBoxHeight(30.h),
            ],
          ),
        ),
      ),
    );
  }

  accesswidget() {
    // Add a state variable to control visibility

    Get.dialog(
      Dialog(
        backgroundColor: Colors.white,
        child: SizedBox(
          width: 380.w,
          height: 200.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text16w400cblack(
                  "Are you sure you want to give access?",
                ),
                sizedBoxHeight(10),
                text11w400c667085(
                    'Do you really want to give this role access to the corporate control panel'),
                sizedBoxHeight(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isAdvanceAccessVisible = true;
                          isGiveAccess = false; // Show section
                        });
                        Get.back();
                      },
                      child: Center(
                        child: Container(
                          width: 130.w,
                          height: 40.h,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Color(0xff6311CB),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Text(
                            'Yes, I do',
                            style: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Gilroy-Medium',
                            ),
                          ),
                        ),
                      ),
                    ),
                    sizedBoxWidth(10),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 130.w,
                        height: 40.h,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 231, 229, 237),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Text(
                          'No, don’t',
                          style: TextStyle(
                            color: const Color(0xff344054),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Gilroy-Medium',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CheckboxGroup extends StatefulWidget {
  final String groupName;
  final List<String> items;
  const CheckboxGroup({
    required this.groupName,
    required this.items,
    super.key,
  });

  @override
  _CheckboxGroupState createState() => _CheckboxGroupState();
}

class _CheckboxGroupState extends State<CheckboxGroup> {
  bool isGroupChecked = false;
  List<bool> checkedItems = [];

  @override
  void initState() {
    super.initState();
    checkedItems =
        List.filled(widget.items.length, false); // Initialize checkbox states
  }

  void toggleSelectAll(bool? value) {
    setState(() {
      isGroupChecked = value ?? false;
      for (int i = 0; i < checkedItems.length; i++) {
        checkedItems[i] = isGroupChecked;
      }
    });
  }

  void toggleItem(int index, bool? value) {
    setState(() {
      checkedItems[index] = value ?? false;
      isGroupChecked = checkedItems.every((checked) => checked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isGroupChecked,
                    onChanged: (bool? value) {
                      toggleSelectAll(value);
                    },
                  ),
                  Text(widget.groupName),
                ],
              ),
              Row(
                children: widget.items.asMap().entries.map((entry) {
                  int index = entry.key;
                  String item = entry.value;
                  return Row(
                    children: [
                      Checkbox(
                        value: checkedItems[index],
                        onChanged: (bool? value) {
                          toggleItem(index, value);
                        },
                      ),
                      Text(item),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MultipleCheckboxGroups extends StatelessWidget {
  const MultipleCheckboxGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: CheckboxGroup(
            groupName: 'All',
            items: ['View', 'Edit', 'Books', 'Delete'],
          ),
        ),
      ],
    );
  }
}
