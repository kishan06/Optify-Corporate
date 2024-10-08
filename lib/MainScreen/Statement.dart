import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewStatement extends StatefulWidget {
  const ViewStatement({super.key});

  @override
  State<ViewStatement> createState() => _ViewStatementState();
}

class _ViewStatementState extends State<ViewStatement> {
  final List<String> _departments = [
    'Select department',
    'Finance',
    'HR',
    'IT',
    'Marketing',
    'Sales'
  ];
  final String _selectedDepartment = 'Select department';
  List<String> options = ['Weekly', 'Monthly', 'Yearly'];
  String selectedOption = 'Weekly';

  @override
  Widget build(BuildContext context) {
    double totalAmount = 200000;
    double balaceview = 150000;
    double progress = balaceview / totalAmount;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(
        titleTxt: 'Statements',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 0, left: 16, right: 16, bottom: 16),
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffDADDE8),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            text18w400c343C6A('Balance Overview'),
                          ],
                        ),
                        sizedBoxHeight(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text16w400c585858('Used amount'),
                                text24w600cblack('₹ 1,50,000')
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text16w400c585858('Available amount'),
                                text24w600cblack('₹ 25,600')
                              ],
                            ),
                          ],
                        ),
                        sizedBoxHeight(5.h),
                        Row(
                          children: [
                            text16w400c585858('Total amount -'),
                            text16w400cblack(' ₹ 2,00,000'),
                          ],
                        ),
                        sizedBoxHeight(10.h),
                        LinearProgressIndicator(
                          value: progress,
                          minHeight: 6,
                          backgroundColor: Colors.grey[300],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xff6311CB)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: Container(
                            height: 50.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFFffffff),
                              border: Border.all(
                                color: const Color(0xffD4D6D9),
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_today,
                                      color: Color(0xff000000),
                                    ),
                                    const SizedBox(width: 5),
                                    DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: selectedOption,
                                        icon: null,
                                        items: options
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: SizedBox(
                                              width: 100.w,
                                              child: Text(
                                                value,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedOption = newValue!;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      sizedBoxWidth(10.w),
                      const Expanded(flex: 1, child: ExportDropdown()),
                    ],
                  ),
                  const statements(),
                  sizedBoxHeight(10.h),
                  const Divider(),
                  const statements(),
                  sizedBoxHeight(10.h),
                  const Divider(),
                  const statements(),
                  sizedBoxHeight(10.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class statements extends StatelessWidget {
  const statements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sizedBoxHeight(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text18w400cblack('WDIPL'),
                text14w400c667085('22 March 2024 - 01:12 PM'),
              ],
            ),
            const Text(
              '- ₹500',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xffE81515),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )
      ],
    );
  }
}

class ExportDropdown extends StatefulWidget {
  const ExportDropdown({super.key});

  @override
  _ExportDropdownState createState() => _ExportDropdownState();
}

class _ExportDropdownState extends State<ExportDropdown> {
  final List<String> _exportOptions = [
    'Export',
    'Export as PDF',
    'Export as Excel'
  ];

  String? _selectedExportOption = 'Export';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        border: Border.all(
          color: const Color(0xFFDFDEDE),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: DropdownButton<String>(
        value: _selectedExportOption,
        isExpanded: true,
        // hint: const Text('Export'),
        onChanged: (String? newValue) {
          setState(() {
            _selectedExportOption = newValue!;
            // Handle actions based on the selected option here
          });
        },
        items: _exportOptions.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: [
                _getExportIcon(value), // Get the appropriate icon
                SizedBox(width: 10.w), // Space between icon and text
                Text(value),
              ],
            ),
          );
        }).toList(),
        style: const TextStyle(color: Colors.black, fontSize: 16),
        underline: Container(
          height: 2,
          color: Colors.transparent,
        ),
      ),
    );
  }

  // Method to return the correct icon based on the option
  Widget _getExportIcon(String value) {
    switch (value) {
      case 'Export as PDF':
        return Image.asset(
          'assets/images/png/pdf.png',
          width: 20,
        );
      case 'Export as Excel':
        return Image.asset(
          'assets/images/png/excel.png',
          width: 20,
        );
      default:
        return Image.asset(
          'assets/images/png/export.png',
          width: 20,
        );
    }
  }
}
