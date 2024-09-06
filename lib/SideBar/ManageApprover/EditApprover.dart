// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';

class EditDetails extends StatefulWidget {
  const EditDetails({super.key});

  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  bool billapproved = false;
  bool reimbursement = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(titleTxt: 'Edit Approver'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/png/Avatar.png',
                    ),
                  ),
                  sizedBoxWidth(10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Reethik thota",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "reethikthota@wdipl.com",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              text18w400cblack('Assign module & wallet'),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: billapproved,
                        onChanged: (bool? value) {
                          setState(() {
                            billapproved = value ??
                                false; // Update state when checkbox is toggled
                          });
                        },
                      ),
                      text16w400c667085("Bill approver"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: reimbursement,
                        onChanged: (bool? value) {
                          setState(() {
                            reimbursement = value ?? false;
                          });
                        },
                      ),
                      text16w400c667085("Reimbursement approver"),
                    ],
                  ),
                  sizedBoxHeight(10),
                  const Divider(),
                  sizedBoxHeight(10),
                  const ExpenseCheckbox(),
                  sizedBoxHeight(10),
                  const Divider(),
                  sizedBoxHeight(10),
                  const BenefitsCheckbox(),
                  sizedBoxHeight(30),
                  CustomButton(
                    text: 'Save',
                    ontap: () {
                      Get.toNamed(RouteName.manageapprover);
                    },
                  ),
                  sizedBoxHeight(30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpenseCheckbox extends StatefulWidget {
  const ExpenseCheckbox({super.key});

  @override
  _ExpenseCheckboxState createState() => _ExpenseCheckboxState();
}

class _ExpenseCheckboxState extends State<ExpenseCheckbox> {
  bool isExpenseChecked = false;
  bool isFoodChecked = false;
  bool isFuelChecked = false;
  bool isTravelChecked = false;
  bool isBookChecked = false;

  // This function toggles all the checkboxes when "Expense" is checked or unchecked
  void toggleSelectAll(bool? value) {
    setState(() {
      isExpenseChecked = value ?? false;
      isFoodChecked = isExpenseChecked;
      isFuelChecked = isExpenseChecked;
      isTravelChecked = isExpenseChecked;
      isBookChecked = isExpenseChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Expense Checkbox (Select All)
        Row(
          children: [
            Checkbox(
              value: isExpenseChecked,
              onChanged: (bool? value) {
                toggleSelectAll(value);
              },
            ),
            text18w400cblack('Expense'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Column(
            children: [
              // Individual checkboxes for items under Expense
              Row(
                children: [
                  Checkbox(
                    value: isFoodChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isFoodChecked = value ?? false;
                      });
                    },
                  ),
                  text16w400c667085('Food'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isFuelChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isFuelChecked = value ?? false;
                      });
                    },
                  ),
                  text16w400c667085('Fuel'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isTravelChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isTravelChecked = value ?? false;
                      });
                    },
                  ),
                  text16w400c667085('Travel'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isBookChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isBookChecked = value ?? false;
                      });
                    },
                  ),
                  text16w400c667085('Book & Periodicals'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BenefitsCheckbox extends StatefulWidget {
  const BenefitsCheckbox({super.key});

  @override
  _BenefitsCheckboxState createState() => _BenefitsCheckboxState();
}

class _BenefitsCheckboxState extends State<BenefitsCheckbox> {
  bool isExpenseChecked = false;
  bool isFoodChecked = false;
  bool isFuelChecked = false;
  bool isTravelChecked = false;
  bool isBookChecked = false;

  // This function toggles all the checkboxes when "Expense" is checked or unchecked
  void toggleSelectAll(bool? value) {
    setState(() {
      isExpenseChecked = value ?? false;
      isFoodChecked = isExpenseChecked;
      isFuelChecked = isExpenseChecked;
      isTravelChecked = isExpenseChecked;
      isBookChecked = isExpenseChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Expense Checkbox (Select All)
        Row(
          children: [
            Checkbox(
              value: isExpenseChecked,
              onChanged: (bool? value) {
                toggleSelectAll(value);
              },
            ),
            text18w400cblack('Benefit'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Column(
            children: [
              // Individual checkboxes for items under Expense
              Row(
                children: [
                  Checkbox(
                    value: isFoodChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isFoodChecked = value ?? false;
                      });
                    },
                  ),
                  text16w400c667085('Food'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isFuelChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isFuelChecked = value ?? false;
                      });
                    },
                  ),
                  text16w400c667085('Fuel'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isTravelChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isTravelChecked = value ?? false;
                      });
                    },
                  ),
                  text16w400c667085('Travel'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isBookChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isBookChecked = value ?? false;
                      });
                    },
                  ),
                  text16w400c667085('Book & Periodicals'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
