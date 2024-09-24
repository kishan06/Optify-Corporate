// ignore_for_file: unused_import

import 'dart:ffi';
import 'dart:io';

import 'package:Optifii_Corporate/SideBar/Help%20&%20Support/RaiseATicket/RaiseTicketView/RaiseTicketView.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTextFormField.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/Utils/Helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:Optifii_Corporate/Utils/Helpers/ImagePicker.dart';
import 'package:image_picker/image_picker.dart';

class RaiseATicket extends StatefulWidget {
  const RaiseATicket({super.key});

  @override
  State<RaiseATicket> createState() => _RaiseATicketState();
}

class _RaiseATicketState extends State<RaiseATicket> {
  final _formKey = GlobalKey<FormState>();
  String? _pickedImagePath;
  bool _isScreenshotPicked = false; // New flag for screenshot validation
  String _errorMessage = ''; // For showing an error message

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: const CommonAppbar(titleTxt: 'Raise a Ticket'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text18w400c141414('Subject'),
                    sizedBoxHeight(10.h),
                    CustomTextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter subject';
                        }
                        return null;
                      },
                    ),
                    sizedBoxHeight(24.h),
                    text18w400c141414('Type of issue'),
                    sizedBoxHeight(10.h),
                    CustomTextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter issue';
                        }
                        return null;
                      },
                    ),
                    sizedBoxHeight(24.h),
                    text18w400c141414('Subtype'),
                    sizedBoxHeight(10.h),
                    CustomTextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter subtype';
                        }
                        return null;
                      },
                    ),
                    sizedBoxHeight(24.h),
                    text18w400c141414('Add Screenshot'),
                    sizedBoxHeight(10.h),
                    InkWell(
                      onTap: () async {
                        String pickedImage = await ImagePickerMethod()
                            .getImage(ImageSource.gallery);

                        if (pickedImage.isNotEmpty) {
                          setState(() {
                            _pickedImagePath = pickedImage;
                            _isScreenshotPicked = true; // Screenshot picked
                            _errorMessage = ''; // Clear error message
                          });
                        }
                      },
                      child: Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: const Color(0xffCDCDCD))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          child: Wrap(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffF2E9FE),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 6),
                                  child: text18w400c363636('Upload from files'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    sizedBoxHeight(10.h),
                    // Display error message if no screenshot is picked
                    if (!_isScreenshotPicked && _errorMessage.isNotEmpty)
                      Text(
                        _errorMessage,
                        style: TextStyle(color: Colors.red),
                      ),
                    // Display the picked image if available
                    if (_pickedImagePath != null)
                      Container(
                        height: 200.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: const Color(0xffCDCDCD))),
                        child: Image.file(
                          File(_pickedImagePath!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    sizedBoxHeight(24.h),
                    text18w400c141414('Summarize your issue'),
                    sizedBoxHeight(10.h),
                    CustomTextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter issue';
                        }
                        return null;
                      },
                      maxlines: 5,
                    ),
                  ],
                ),
                sizedBoxHeight(73.h),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Validate screenshot before submitting
                      if (_pickedImagePath == null) {
                        setState(() {
                          _errorMessage = 'Please add a screenshot.';
                          _isScreenshotPicked = false;
                        });
                      } else {
                        // If the form is valid, navigate to the next screen
                        Get.to(const RaiseTicketView());
                      }
                    } else {
                      // Form is not valid, you can handle it here
                      print('Form is not valid');
                    }
                  },
                  child: Container(
                    height: 60.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xff3725EA),
                              Color(0xff5E0FCD),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                    child: Center(
                      child: text18w400cffffff('Raise a Ticket'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

