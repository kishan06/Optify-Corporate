import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApproverDetails extends StatefulWidget {
  const ApproverDetails({super.key});

  @override
  State<ApproverDetails> createState() => _ApproverDetailsState();
}

class _ApproverDetailsState extends State<ApproverDetails> {
  bool billapproved = false;
  bool reimbursement = false;

  // Track the validation state
  bool isAnyCheckboxSelected = true;
  final _expenseCheckboxKey = GlobalKey<_ExpenseCheckboxState>();
  final _benefitsCheckboxKey = GlobalKey<_BenefitsCheckboxState>();

  // Validation for all checkboxes in the form
  bool _validateCheckboxes() {
    // Validate if at least one checkbox from any section is selected
    bool expenseValidated =
        _expenseCheckboxKey.currentState?.validate() ?? false;
    bool benefitsValidated =
        _benefitsCheckboxKey.currentState?.validate() ?? false;

    return billapproved ||
        reimbursement ||
        expenseValidated ||
        benefitsValidated;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(titleTxt: 'Add Approver'),
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
                    backgroundImage: AssetImage('assets/images/png/Avatar.png'),
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
              const SizedBox(height: 5),
              const Divider(),
              const SizedBox(height: 30),
              text18w400cblack('Assign module & wallet'),
              Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: billapproved,
                        onChanged: (bool? value) {
                          setState(() {
                            billapproved = value ?? false;
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
                  // Show validation error message if no checkboxes are selected
                  if (!isAnyCheckboxSelected)
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Please select at least one approver category.',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  sizedBoxHeight(10),
                  const Divider(),
                  sizedBoxHeight(10),
                  // Pass the global key to access the state of ExpenseCheckbox
                  ExpenseCheckbox(key: _expenseCheckboxKey),
                  sizedBoxHeight(10),
                  const Divider(),
                  sizedBoxHeight(10),
                  // Pass the global key to access the state of BenefitsCheckbox
                  BenefitsCheckbox(key: _benefitsCheckboxKey),
                  sizedBoxHeight(30),
                  CustomButton(
                    text: 'Save',
                    ontap: () {
                      // Validate checkboxes before navigating
                      if (_validateCheckboxes()) {
                        Get.toNamed(RouteName.manageapprover);
                      } else {
                        setState(() {
                          isAnyCheckboxSelected =
                              false; // Trigger the validation error display
                        });
                      }
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

// ExpenseCheckbox with validation
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

  bool validate() {
    return isExpenseChecked ||
        isFoodChecked ||
        isFuelChecked ||
        isTravelChecked ||
        isBookChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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

  void toggleSelectAll(bool? value) {
    setState(() {
      isExpenseChecked = value ?? false;
      isFoodChecked = isExpenseChecked;
      isFuelChecked = isExpenseChecked;
      isTravelChecked = isExpenseChecked;
      isBookChecked = isExpenseChecked;
    });
  }

  bool validate() {
    return isExpenseChecked ||
        isFoodChecked ||
        isFuelChecked ||
        isTravelChecked ||
        isBookChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
