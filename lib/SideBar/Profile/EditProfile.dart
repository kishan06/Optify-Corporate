import 'dart:io';

import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonAppBar.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/CommonTextFormField.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Custombutton.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/Text.dart';
import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:Optifii_Corporate/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:remove_emoji_input_formatter/remove_emoji_input_formatter.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ImagePicker _picker = ImagePicker();
  File? _image;
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _employeeIdController = TextEditingController();
  final _memberSinceController = TextEditingController();
  final _companyNameController = TextEditingController();
  final _industryController = TextEditingController();
  final _typeController = TextEditingController();

  // Function to pick an image from gallery or camera
  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(
        titleTxt: 'Edit',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Image Section
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: _image != null
                            ? FileImage(_image!)
                            : const AssetImage('assets/images/png/Avatar.png')
                                as ImageProvider,
                      ),
                      Positioned.fill(
                        bottom: 0,
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: _showImageSourceDialog,
                            child: Container(
                              width: 150.w,
                              height: 150.h,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Change Photo',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                sizedBoxHeight(20.h),

                // Personal Information Section
                text20w600c343C6A('Personal Information'),
                sizedBoxHeight(20.h),

                // Name Field
                text20w400cblack('Name'),
                CustomTextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    } else if (value.length < 3) {
                      return "Name should be at least 3 characters long";
                    }
                    return null;
                  },
                  texttype: TextInputType.text,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Enter your name",
                ),
                sizedBoxHeight(15.h),

                // Email Field
                text20w400cblack('Email ID'),
                CustomTextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                        .hasMatch(value)) {
                      return "Please enter a valid email address";
                    }
                    return null;
                  },
                  texttype: TextInputType.emailAddress,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Enter your email",
                ),
                sizedBoxHeight(15.h),

                // Mobile Number Field
                text20w400cblack('Mobile number'),
                CustomTextFormField(
                  controller: _mobileController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your mobile number";
                    } else if (value.length != 10) {
                      return "Mobile number should be exactly 10 digits";
                    }
                    return null;
                  },
                  texttype: TextInputType.phone,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Enter your mobile number",
                ),
                sizedBoxHeight(15.h),

                // Employee ID Field
                text20w400cblack('Employee ID'),
                CustomTextFormField(
                  controller: _employeeIdController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your employee ID";
                    }
                    return null;
                  },
                  texttype: TextInputType.text,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Enter your employee ID",
                ),
                sizedBoxHeight(15.h),

                // Member Since Field
                text20w400cblack('Member since'),
                CustomTextFormField(
                  controller: _memberSinceController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the membership date";
                    }
                    return null;
                  },
                  texttype: TextInputType.datetime,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Enter membership date",
                ),
                sizedBoxHeight(40.h),

                // Company Information Section
                text20w600c343C6A('Company Information'),
                sizedBoxHeight(20.h),

                // Company Name Field
                text20w400cblack('Company Name'),
                CustomTextFormField(
                  controller: _companyNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your company name";
                    }
                    return null;
                  },
                  texttype: TextInputType.text,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Enter your company name",
                ),
                sizedBoxHeight(15.h),

                // Industry Field
                text20w400cblack('Industry'),
                CustomTextFormField(
                  controller: _industryController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your industry";
                    }
                    return null;
                  },
                  texttype: TextInputType.text,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Enter your industry",
                ),
                sizedBoxHeight(15.h),

                // Type Field
                text20w400cblack('Type'),
                CustomTextFormField(
                  controller: _typeController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your company type";
                    }
                    return null;
                  },
                  texttype: TextInputType.text,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Enter your company type",
                ),
                sizedBoxHeight(40.h),

                // Save Button
                CustomButton(
                  text: 'Save',
                  ontap: () {
                    if (_formKey.currentState!.validate()) {
                      Get.toNamed(RouteName.profile);
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

  // Show image source dialog
  void _showImageSourceDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Choose Image Source"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("Camera"),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_album),
              title: const Text("Gallery"),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }
}
