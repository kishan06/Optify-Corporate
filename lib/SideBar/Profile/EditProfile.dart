// ignore_for_file: file_names

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

  // Function to pick an image from gallery or camera
  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  File? _image;

  // TextEditingControllers to manage input
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _employeeIdController = TextEditingController();
  final _memberSinceController = TextEditingController();
  final _companyNameController = TextEditingController();
  final _industryController = TextEditingController();
  final _typeController = TextEditingController();

  // GlobalKey to manage the form state
  final _formKey = GlobalKey<FormState>();

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
            key: _formKey, // Add the form key
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: _image != null
                                ? FileImage(_image!) // Display selected image
                                : const AssetImage(
                                        'assets/images/png/Avatar.png')
                                    as ImageProvider, // Default image
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                      Positioned.fill(
                        bottom: 20,
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              _showImageSourceDialog(); // Function to show dialog for picking an image
                            },
                            child: Container(
                              width: 120.w,
                              height: 130.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              padding: const EdgeInsets.all(10),
                              child: const Column(
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
                text20w600c343C6A('Personal Information'),
                sizedBoxHeight(20.h),
                text20w400cblack('Name'),
                CustomTextFormField(
                  controller: _nameController,
                  texttype: TextInputType.text,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Shailesh Gupta",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Name is required';
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Email ID'),
                CustomTextFormField(
                  controller: _emailController,
                  texttype: TextInputType.emailAddress,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "reethikthota@wdipl.com",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Email is required';
                    }
                    // Basic email validation
                    if (!RegExp(
                            r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")
                        .hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Mobile number'),
                CustomTextFormField(
                  controller: _mobileController,
                  texttype: TextInputType.phone,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "+91 7845154578",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Mobile number is required';
                    }
                    if (!RegExp(r"^\+?[0-9]{10,13}$").hasMatch(value)) {
                      return 'Enter a valid mobile number';
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Employee ID'),
                CustomTextFormField(
                  controller: _employeeIdController,
                  texttype: TextInputType.number,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "WD-7675",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Employee ID is required';
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Member since'),
                CustomTextFormField(
                  controller: _memberSinceController,
                  texttype: TextInputType.datetime,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "07/12/2022",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Member since date is required';
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(40.h),
                text20w600c343C6A('Company Information'),
                sizedBoxHeight(20.h),
                text20w400cblack('Company Name'),
                CustomTextFormField(
                  controller: _companyNameController,
                  texttype: TextInputType.text,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "WDIPL",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Company name is required';
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Industry'),
                CustomTextFormField(
                  controller: _industryController,
                  texttype: TextInputType.text,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Fintech",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Industry is required';
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(15.h),
                text20w400cblack('Type'),
                CustomTextFormField(
                  controller: _typeController,
                  texttype: TextInputType.text,
                  inputFormatters: [RemoveEmojiInputFormatter()],
                  hintText: "Private limited company",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Company type is required';
                    }
                    return null;
                  },
                ),
                sizedBoxHeight(40.h),
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
